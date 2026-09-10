# import the libraries

from datetime import timedelta
# The DAG object; we'll need this to instantiate a DAG
from airflow.models import DAG
# Operators; you need this to write tasks!
from airflow.operators.bash_operator import BashOperator
# This makes scheduling easy
from airflow.utils.dates import days_ago

#defining DAG arguments

# You can override them on a per-task basis during operator initialization
default_args = {
    'owner': 'Kjarr',
    'start_date': days_ago(0),
    'email': ['your email'],
    'email_on_failure': True,
    'email_on_retry': True,
    'retries': 2,
    'retry_delay': timedelta(minutes=1),
}

# defining the DAG

# define the DAG
dag = DAG(
    'ETL_toll_data',
    default_args=default_args,
    description='Apache Airflow Final Assessment',
    schedule_interval=timedelta(days=1),
)

# define the tasks

# define the task 'download'

unzip_data = BashOperator(
    task_id='unzip_data',
    bash_command='tar -xzf /home/project/airflow/dags/finalassignment/tolldata.tgz -C /home/project/airflow/dags/finalassignment/staging/',
    dag=dag,
)

extract_data_from_csv = BashOperator(
    task_id='extract_data_from_csv',
    bash_command='cut -d"," -f1-4 /home/project/airflow/dags/finalassignment/staging/vehicle-data.csv > /home/project/airflow/dags/finalassignment/staging/csv_data.csv',
    dag=dag,
)

extract_data_from_tsv = BashOperator(
    task_id='extract_data_from_tsv',
    bash_command='cut -f5-7 /home/project/airflow/dags/finalassignment/staging/tollplaza-data.tsv | tr "\t" "," > /home/project/airflow/dags/finalassignment/staging/tsv_data_staging.csv',
    dag=dag,
)

# This is necessary due to a \r in the file that made the subsequent file in the paste command overwrite
# the line.
transform_tsv_data = BashOperator(
    task_id='transform_tsv_data',
    bash_command="tr -d '\\r' < /home/project/airflow/dags/finalassignment/staging/tsv_data_staging.csv > /home/project/airflow/dags/finalassignment/staging/tsv_data.csv",
    dag=dag,
)

extract_data_from_fixed_width = BashOperator(
    task_id='extract_data_from_fixed_width',
    bash_command='tr -s " " < /home/project/airflow/dags/finalassignment/staging/payment-data.txt | cut -d" " -f10-11 | tr " " "," > /home/project/airflow/dags/finalassignment/staging/fixed_width_data.csv',
    dag=dag,
)

consolidate_data = BashOperator(
    task_id='consolidate_data',
    bash_command='paste /home/project/airflow/dags/finalassignment/staging/csv_data.csv /home/project/airflow/dags/finalassignment/staging/tsv_data.csv /home/project/airflow/dags/finalassignment/staging/fixed_width_data.csv -d "," > /home/project/airflow/dags/finalassignment/staging/extracted_data.csv',
    dag=dag,
)

transform_data = BashOperator(
    task_id='transform_data',
    bash_command='cut -d"," -f4 /home/project/airflow/dags/finalassignment/staging/extracted_data.csv | tr [:lower:] [:upper:] > /home/project/airflow/dags/finalassignment/staging/transformed_data.csv',
    dag=dag,
)

unzip_data >> extract_data_from_csv >> extract_data_from_tsv >> transform_tsv_data >> extract_data_from_fixed_width >> consolidate_data >> transform_data
