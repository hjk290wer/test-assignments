\# B1 — clean\_old\_logs.sh



\## Description

clean\_old\_logs.sh is a simple Bash helper script that finds .log files older than a specified

number of days in a given directory and deletes them after user confirmation.



The script is intended to demonstrate basic Bash scripting skills:

argument handling, file search with find, interactive input, and safe file removal.



\## Usage

./clean\_old\_logs.sh <log\_directory> <days>



\## Arguments

<log\_directory>  Path to the directory containing log files  

<days>           Delete .log files older than this number of days  



\## Examples

./clean\_old\_logs.sh /var/log 30  

./clean\_old\_logs.sh /tmp/logs 7  



\## Behavior

\- Requires exactly two arguments.

\- Searches for files with the .log extension.

\- Selects only files older than the specified number of days.

\- Prints the list of matching files.

\- Prompts for confirmation:  

&nbsp; Delete these files? (y/n):

\- If the user enters y, the files are deleted.

\- If the user enters n, no files are removed.



\## Notes

\- File age is determined using find with the -mtime option.

\- The script does not delete files without explicit confirmation.

\- Before running on Linux, make the script executable:



chmod +x clean\_old\_logs.sh



