# Linux.Base_Task1

sudo su #log in to root  
passwd klimnyuk #changing password for user klimnyuk  
who; w; whoami; id; finger #logged in users and theirs commands  
chfn #changing personal info  
whatis chfn; passwd --help; man man #linux help system examples  
man finger #manual sheet of jinger command  
ls -l #list files and directories with long listing format  
ls --help #shows help information about ls command  
tree #shows tree of files and directories  
tree -P '*.txt' #shows only files .txt and directories where they located  
sudo tree /root -L 2 #shows root directory including the second nesting level  
more --help #shows help information about more command  
man less #manual sheet of less command  
file .bash* #determine all files whose name start like bash   
cd /home/klimnyuk; cd ~; cd ..; cd #change directory command  
ll; ls -a -l -i #list files and directories -a - with hidden files, -l with long listing format, -i - showing inodes  
mkdir ~/some-directory #creating a subdirectory in the home directory  
sudo tree /root > some-directory/some-file.txt #put in file information about directories located in the root directory  
cat some-directory/some-file.txt #viewing the created file  
cp some-directory/some-file.txt /home/klimnyuk/some-file.txt #coping this file with relative and absolute addressing  
rm -rf some-directory/ #deleting directory  
rm some-file.txt #deleting file  
mkdir test/ #creating test directory  
cp .bash_history test/labwork2 #coping one file to new directory  
ln -s test/labwork2 test/soft-link #creating soft link  
ln test/labwork2 test/hard-link #creating hard link  
mv test/hard-link test/hard_lnk_labwork2 #renaming hard link  
mv test/soft-link test/symb_lnk_labwork2 #renaming soft link  
rm test/labwork2 #hard link still lives, soft link is corruped  
locate -A squid traceroute #locate command with squid and traceroute sequence  
df -h; mount #mounted partitions in the system and their types  
wc given-file; cat -n given-file #counting the number of lines  
find /etc/ -exec grep "host" {} \; #using find command to locate files with host characher sequence  
grep -R ss /etc/ #listing all objects in /etc that contain the ss character sequence  
ls -la /etc/ | pr #that contain the ss character sequence  
ls -l /dev #character devices and block devices  
klimnyuk@ubuntu:~$ file * #determining files type in my home direcoty  
123.txt:                            ASCII text  
jpeg-find.sh:                       Bourne-Again shell script, ASCII text executable  
my_dump.sql:                        ASCII text, with very long lines  
nohup.out:                          empty  
sort:                               ASCII text  
traffic.sh:                         Bourne-Again shell script, ASCII text executable  
typescript:                         UTF-8 Unicode text, with very long lines, with CRLF, CR, LF line terminators, with escape sequences, with overstriking  
ls -u /etc/ | head -n 5 #Listing the first 5 directory files that were recently accessed in the /etc directory
