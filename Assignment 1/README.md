 To transfer data 
type ftp  in command prompt 

ftp-> open 192.168.0.29 21

As i have used chroot so any client can access central folder and others directories like /home,
/etc wont be displayed . So only central directory to be used in connection

so type ls
then see the available content
and use cd to roam in around central subdirectory. 

Use get and put 
get to fetch data from remote machine to local machine.

Use 
get  filename 
at current remote directory.

Use 
put command to put from local to remote
use lcd to check you local directory
put filename

On Remote Machine
 mkdir , rmdir.
ls, cd is used

Of local path
lcd is used

Use 
mget  
mput 
for multiple files