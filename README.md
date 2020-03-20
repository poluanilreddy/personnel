### Syslog ##$
The syslog messages are stored in various subdirectories under the /var/log directory
according to what kind of messages and logs they contain:

var/log/messages - all syslog messages except those mentioned below
var/log/secure - security and authentication-related messages and errors
var/log/maillog - mail server-related messages and errors
var/log/cron - log files related to periodically executed tasks
var/log/boot.log - log files related to system startup

### How to install SAR ##$

yum install sysstat
sar -V --- checking version

cat /etc/cron.d/sysstat --- collects the statistics using cron job

cd /var/log/sa --- By default all the statistics will save /var/log/sa location.
yum update

## CPU usage ##
sar -u
sar -u 1 3: Displays real time CPU usage every 1 second for 3 times.
sar -u ALL: Same as “sar -u” but displays additional fields.
sar -u ALL 1 3: Same as “sar -u 1 3″ but displays additional fields.
sar -u -f /var/log/sa/sa10: Displays CPU usage for the 10day of the month from the sa10 file.

## Memory usage ## 

sar -r
sar -r 1 3
sar -r -f /var/log/sa/sa10

## Swap space usage ##
sar -S
sar -S 1 3
sar -S -f /var/log/sa/sa15

### Updating security related packages ###

yum updateinfo security --- to check the available security updates

If packages have security updates available, you can update only these packages to their latest versions.
Type as root:

yum update --security

You can also update packages only to versions containing the latest security updates.
Type as root:

yum update-minimal --security

For example, assume that:
the kernel-3.10.0-1 package is installed on your system;
the kernel-3.10.0-2 package was released as a security update;
the kernel-3.10.0-3 package was released as a bug fix update.
Then yum update-minimal --security updates the package to kernel-3.10.0-2, 
and yum update --security updates the package to kernel-3.10.0-3.

yum history -- command enables users to review information about a timeline of yum transactions, 
the dates and times they occurred, the number of packages affected, 
whether these transactions succeeded or were aborted, and if the RPM database was changed between transactions. 
