#Linux_BASH

#third scrip: uoy need to enter this line in your bash
(crontab -l; echo "* * * * * ./script-C.sh source-directory backup-directory") | crontab - #adding to an existing crontab new line (see inside echo)
