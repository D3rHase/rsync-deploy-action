#!/bin/sh

# Prepare SSH connection
mkdir -p /root/.ssh/
echo "${INPUT_PRIVATE_SSH_KEY}" > /root/.ssh/id_rsa.key
chmod 600 /root/.ssh/id_rsa.key
ssh-keyscan -H ${INPUT_HOST} >> /root/.ssh/known_hosts
cat >>/root/.ssh/config <<END
Host server
    HostName ${INPUT_HOST}
    User ${INPUT_USER}
    Port ${INPUT_PORT}
    IdentityFile /root/.ssh/id_rsa.key
END

# Uploading the file-s
echo starting to upload file/-s...
rsync -avz $GITHUB_WORKSPACE/$INPUT_REPOSITORY_PATH server:$INPUT_SERVER_PATH
echo finished uploading...
