#!/bin/bash

if [ -z "${AMPUSERID}" ]; then
  echo "This docker image cannot be used directly by itself - it must be started by ampinstmgr"
  exit 100
fi

#Check if the AMP user already exists
getent passwd amp &> /dev/null

if [ "$?" == "0" ]; then
    echo "AMP user already exists, continuing..."
else
    useradd -m -d /home/amp -s /bin/bash -c "AMP Process User" -u $AMPUSERID amp &> /dev/null
    touch /home/amp/.gitconfig
    chown -R amp:amp /home/amp 2> /dev/null
    usermod -aG tty amp
fi

ARGS=$@
exec su -l -m -c "cd /AMP; HOME=/home/amp /AMP/AMP_Linux_x86_64 ${ARGS}; exit $?" -- amp
exit $?
