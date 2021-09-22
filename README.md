sudo su
passwd root: /etc/shadow
w; who: JCPU, PCPU, connetcion adress, load avarage
man who
more --help
less .bash_history
tree | grep c
file .bash*
cd /home/klimnyuk; cd ~; cd ..; cd
ll; ls -a -l -i
mkdir some-directory
sudo tree /root > some-directory/some-file.txt
cat some-directory/some-file.txt
cp some-directory/some-file.txt /home/klimnyuk/some-file.txt
rm -rf some-directory/
rm some-file.txt
mkdir test/
cp .bash_history test/labwork2
ln -s test/labwork2 test/soft-link
ln test/labwork2 test/hard-link
mv test/hard-link test/hard_lnk_labwork2
mv test/soflink test/symb_lnk_labwork2
rm test/labwork2 -жесткая ссылка на айнод осталась, мягкая ссылка на файл стала битой
locate -A squid traceroute
df -h; mount
wc given-file; cat -n given-file
find /etc/ -exec grep "host" {} \;
grep -R ss /etc/
ls -la /etc/ | pr
ls -l /dev - c - символное стройство, b - блочное

klimnyuk@ubuntu:~$ file *
123.txt:                            ASCII text
access.log_2021-09-12_10-27-48.tar: gzip compressed data, from Unix, truncated
jooble:                             directory
jooble1:                            directory
jpeg-find.sh:                       Bourne-Again shell script, ASCII text executable
my_dump.sql:                        ASCII text, with very long lines
nohup.out:                          empty
sort:                               ASCII text
traffic.sh:                         Bourne-Again shell script, ASCII text executable
typescript:                         UTF-8 Unicode text, with very long lines, with CRLF, CR, LF line terminators, with escape sequences, with overstriking

ls -u /etc/ | head -n 5
