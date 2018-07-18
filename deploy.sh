echo -e "Current Directory: "
pwd
echo -e "\nItems in Directory:"
ls
cd ../
echo -e "Current Directory: "
pwd
echo -e "\nItems in Directory"
ls
echo -e "HELLO WORLDS!"
scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "wm.tar.gz" "circleci"@"54.197.6.18":/home/"circleci"/

ssh -oStrictHostKeyChecking=no "circleci"@"54.197.6.18" /bin/bash <<EOF
    echo -e "Successfully SSH'd into server"
    echo -e "Current Server Directory: "
    pwd
    mkdir -p nodeapp
    mv wm.tar.gz nodeapp/wm.tar.gz
    cd nodeapp
    echo -e "\nItems in directory"
    tar -xzvf "wm.tar.gz"
    rm -f wm.tar.gz
    ls

EOF