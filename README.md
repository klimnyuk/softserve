# Linux.Base_Task3

top #States: Running, Waiting, Stopped, Zombie  
ps -aux #shows us all processes of all users  
pstree #makes output of current processes and their chain processes  
ls -l /proc/ #procfs represents information about processes in OS  
lscpu #infromation about CPU  
ps ax o user,group,command #specify ps  commnad output: user,group,command with arguments  
ps ax #kernel processes have a name that is between square brackets  
process statuses: R – Running, S – Interruptible sleep, D – Uninterruptible sleep, T – Stopped, Z – “zombie”  
ps -U root #displays only the processes of root user  
top #build-in system monitor, it displays information about system processes, load avarage etc.  
top -u root #displays the processes of root user  
in top: <Shift>+<N> — sort by PID; <Shift>+<P> — sort by CPU usage; <Shift>+<M> — sort by Memory usage; <Shift>+<T> — sort by Time usage  
renice -n 10 -p 1042143 #renice for process with id 1042143  
sudo nice -n -6 sleep 9999 & #creating new process on background with specified nice  
Once given top command, press r. Give PID value of the process you want to change the process value. Give renice value (from -20 to +19)  
kill -15 1042251 #kill with sigterm (15) process with pid 1042251  
kill 1042213 #kill with sigkill (9) process with pid 1042251  
kill -1 1042143 #kill with sighup (1) process with pid 1042143  
sleep 9999 & # run command in background  
jobs #shows jobs  
fg 1 #foreground job 1, then press ctrl+z for pause this process in foreground  
bg 1 #background again job 1  
