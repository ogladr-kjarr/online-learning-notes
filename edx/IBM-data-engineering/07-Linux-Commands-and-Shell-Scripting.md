# EdX: IBM Data Engineering

## Linux Commands and Shell Scripting

### Module One: Introduction to Linux

An OS is the software that manages hardware and resources, allowing interaction with the hardware. UNIX is a family of OS. Linux is a family of UNIX like systems, created to provide a free open source version of UNIX. Key features include: being free and open source, multi-user, multi-tasking, and portability.

There are five layers to a Linux system: UI (allows interaction with the machine) -> Application Layer (system demons, shells, user apps, tools) -> Opererating System (responsible for job scheduling and time tracking, detecting errors and file management) -> Kernel (manages memory, processing, hardware, and security) -> Hardware

The Linux filesystem is the collection of files on the machine, it includes those necessary to run the kernel and OS, as well as for applications. The root directory is the head of the file system.

The shell is an OS level application that interprets commands, like Bash and ZSH. A terminal is an application that allows interacting with the shell. Commands are sent through the terminal to the shell, the OS, the kernel, to the hardware to process the command, and then the result is sent back through the layers.

### Module Two: Introduction to Linux Commands

Information commands include:

* whoami
* id
* uname
* ps
* top
* df
* date

File commands include:

* wc
* grep
* list 
* find 

File and string content commands include:

* cat
* more
* head
* tail
* echo

Compression and archiving include

* tar
* zip
* unzip

Networking include:

* hostname
* ping
* ifconfig
* ip
* curl
* wget

File commands:

* sort: alphabetically sorted by lines, with -r parameter descending instead of ascending
* uniq: filter out repeated lines if they are consecutive
* grep
* cut: extracts a section from each line
* paste: merge lines from different files

### Module Three: Introduction to Shell Scripting

The shebang that tells the executor what interpreter to use:

`#! /usr/bin/bash`
or 
`#! /usr/bin/python3`

Filters are shell commands or programs, taking input from standard input and sent to standard output, transforming the input data into output data. Such as wc, cat, more, head, sort, grep etc. They can be chained together using the pipe command.

Shell variables are only limited to the scope of the shell in which they're created. The set command lists all variables visible to the current shell. Environment variables have extended scope, persisting in any child processes from which they originate. Any shell variable can become an environment variable by using the `export variablename` command. The env command lists all environment variables.

Shell variables are created by using `variablename=value`, then to display this use `echo $variablename`. unset variablename deleted the variable. 

Metacharacters include: # for comments, ; seperates commands on the same line, * represents anynumber of characters in a filename pattern, e.g. ls /bin/ba*, ? represents a single character like the * but just one. when quoting with double quotes any $name patterns are evaluated as the variable value, unless the $ is escaped, \$. When using single quotes everything inside is treated literally.

I/O redirection: > redirects output to the file (overwritting), >> appends to output file, 2> redirects error to the file, 2>> append error to file. < redirection to pass file contents to standard input.

Command substitution replaces the command with its output. For example `$(command)` or with backticks. For example `here=$(pwd)` leads to showing the here value as the pwd output using `echo $here`.

Command line arguments pass these to the script, e.g. `./script.sh arg1 arg2`

There are two runtime modes, batch and concurrent.


### Progamming Challeges

In the second week there was a practise challenge to get data form wttr.in and parse it out into a report. I got the regex working on the website RegExpr.com, but it didn't work with grep on the command line. Back and forth with Claude for a while and it turned out there were non-visible color characters within the data. Simply adding a parameter to the get request made the returned data work as it was just plain text now. Very annoying problem, without Clause I wouldn't have know what to do in this situation. Frustratinly after I got it working it turns out that in the hint box on the lab instructions it says to use the parameter that Claude recommended. I just hadn't checked because the issue was with grep, not downloading.

### Thoughts on the Course

I looked forward to this module, as I haven't used Bash scripting in over a decade. In the past I mostly used CRON triggered scripts for database backups.

Networking commands took me back, trying to get wifi cards working with OpenSUSE and Ubuntu back in 2006, networking is effortless now.

This course took x hours.


4;4;4;4;4;2;