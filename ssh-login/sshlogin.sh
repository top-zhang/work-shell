#!/bin/bash

clear
RED='\033[0;31m'
GRN='\033[0;32m'
BLU='\033[0;34m'
NC='\033[0m'
purple='\033[35m'
GRN2='\033[42;37m'

pwdpath=$(cd "$(dirname "$0")";pwd)
ssh="expect $pwdpath/sshlogin.exp"

# menu.sh
echo "---------------------------------------------------------------"
echo "|              __                                             |"
echo "|            _/  |_  ____ ______      ____  __ __  ____       |"
echo "|            \   __\/  _ \\____ \    / ___\|  |  \/    \       |"
echo "|             |  | (  <_> )  |_> >  / /_/  >  |  /   |  \     |"
echo "|             |__|  \____/|   __/   \___  /|____/|___|  /     |"
echo "|                         |__|     /_____/            \/      |"
echo "---------------------------------------------------------------"

echo "--------------------------------------"
echo -e "${GRN2}please enter your Server:${NC}"
echo -e "${GRN}(1) Linux Aliyun Han Zhou${NC}"
echo -e "(15) exit"
echo "--------------------------------------"
read -p "请选择服务器:" input

case ${input} in
    1)
    echo -e "${GRN}Linux Aliyun Han Zhou 2022 2${NC}"
    $ssh ip 用户名 密码
        sleep 1;;
    15)
    exit;;
esac
