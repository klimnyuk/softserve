# Linux.Base_Task2

cat /etc/passwd
cat /etc/group
id
sudo useradd -m test -c 'this is new user'
sudo usermod -l new-user-name test
ls -la /etc/skel/
sudo userdel -r test2
sudo passwd -l test
sudo passwd -u test
sudo passwd -d test
ls -la /etc/
sudo chown test:root 123.txt
sudo chmod 777 123.txt

klimnyuk@ubuntu:~$ ls -l newdir/
total 4
-rwxrwxrwt 1 test test 40 сен 24 11:45 file.txt
klimnyuk@ubuntu:~$ rm newdir/file.txt
rm: cannot remove 'newdir/file.txt': Operation not permitted

sudo chmod ugo+x traffic.sh