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
    echo -e "\nItems in directory"
    ls
    mkdir -p nodeapp
    cd nodeapp
    tar -xzf "wm.tar.gz"
    ls

EOF