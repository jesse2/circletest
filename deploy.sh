echo -e "Current Directory: "
pwd
ls
cd ../
echo -e "Current Directory: "
pwd
ls
echo -e "HELLO WORLDS!"
scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "wm.tar.gz" "circleci"@"54.197.6.18":/home/"circleci"/

ssh -oStrictHostKeyChecking=no "circleci"@"54.197.6.18" /bin/bash <<EOF
    ls
EOF