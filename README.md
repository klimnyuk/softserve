# Linux.Base_Task2

cat /etc/passwd #File structure: username: pswd: uid: gid: uid comments: directory: shell  
cat /etc/group #File structure: group_name:password:group_id:list  
id #Shows us our uid, gid and groups where our user exists  
sudo useradd -m test -c 'this is new user' #creating new user, -c it`s a comment, -m key requaries to create home directory for new user  
sudo usermod -l new-user-name test #user rename  
ls -la /etc/skel/ #shows us structure of skel directory (template of home directory for new users)  
sudo userdel -r test2 #removing user including his mailbox  
sudo passwd -l test #lock user password  
sudo passwd -u test #unlock user password  
sudo passwd -d test #delete user password 
ls -la /etc/ #shows list of files and directories in etcetera dir with access rights, inode quantity, onwer, onwer group, weight, date, name columns  
sudo chown test:root 123.txt #change owner of file 123.txt to test and owner group to root group  
sudo chmod 777 123.txt #changes to full access rights for owner group others 

klimnyuk@ubuntu:~$ ls -l newdir/
total 4
-rwxrwxrwt 1 test test 40 сен 24 11:45 file.txt #stickybit realization
klimnyuk@ubuntu:~$ rm newdir/file.txt
rm: cannot remove 'newdir/file.txt': Operation not permitted

sudo chmod ugo+x traffic.sh #execute attribute (x) for scripts