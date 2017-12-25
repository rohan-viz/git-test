#!/bin/bash +x
ssh -l root -i /home/ubuntu/mediaiq-emr.pem 54.144.9.63 /bin/bash << EOF
ls /mnt
# ./someaction.sh 'some params'
cd /mnt/data/sandbox
pwd
#./some_other_action 'other params'
cd /mnt/data/sandbox/code/eiq/eiq-ui
git pull
# staging profile edit
grunt build

rm -rf /dist/dist-backups/enterprise
cp -R /dist/enterprise/ /dist/dist-backups/





EOF
echo "done!"
