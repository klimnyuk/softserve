#!/bin/bash

#From which ip were the most requests?
echo -e -n "Most requests from IP: \t"
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" $1 | sort | uniq -c | sort -gr |  head -n 1 | awk '{ print $2 }'

#From which ip were the most requests?
echo -e -n "\nMost requested page: \t"
awk '{ print $7 }' $1 | sort | uniq -c | sort -gr |  head -n 1 | awk '{ print $2 }'

#How many requests were there from each ip?
echo -e "\nRequests from each ip:\nquantity\tIP"
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" $1 | sort | uniq -c | sort -gr

#What non-existent pages were clients referred to?
echo -e "\nClients werere ferred to those non-existent pages:"
grep 302 $1 | awk '{ print $7 }'

#What time did site get the most requests?
echo -e -n "\nMost requests was at "
awk -F : '{ print $2":"$3 }' $1 | sort | uniq -c | sort -gr | head -n 1 | awk '{ print $2 }'

#What search bots have accessed the site? (UA + IP)
echo -e "\nSearch bots:"
grep bot $1 | awk '{ s = ""; for (i = 12; i <= NF; i++) s = s $i " "; print $1 " " s }' | sort | uniq -c | sort -gr
