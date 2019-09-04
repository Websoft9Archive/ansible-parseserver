#!/bin/bash

reg="[a-zA-Z0-9][-a-zA-Z0-9]{0,62}(\.[a-zA-Z0-9][-a-zA-Z0-9]{0,62})+\.?"
X
i=0
while [ 0 -eq $i ]
do
  read -p  "Input Parse Server Domain:" domain1
  read -p  "Input Parse Dashboard Domain:" domain2
  if [[ $domain1 =~ $reg ]] && [[ $domain2 =~ $reg ]]
  then
    sed -i "s/parse-server.example.com/$domain1/" /etc/nginx/conf.d/default.conf
    sed -i "s/parse-dashboard.example.com/$domain2/" /etc/nginx/conf.d/default.conf
    sed -i "s/parse-server.example.com/$domain1/" /etc/parse-server/parse-dashboard.json
    sed -i '1,11d' /etc/nginx/conf.d/default.conf
    systemctl restart nginx
    systemctl restart parse-dashboard
    i=1
    rm -rf $0
    echo -e "\033[32m Configure Done! \033[0m"
  else
    echo -e "\033[31m Please enter the correct Domain name! \033[0m"
  fi
done