echo -e "HELLO WORLDS!"
ssh -oStrictHostKeyChecking=no "circleci"@"54.197.6.18" /bin/bash <<EOF
    mkdir fromcircleci
EOF