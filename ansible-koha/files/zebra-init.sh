#!/bin/bash

USER=koha
GROUP=koha
RUNDIR=/var/run/koha/zebradb
LOCKDIR=/var/lock/koha/zebradb

OTHERUSER=''
if [[ $EUID -eq 0 ]]; then
    OTHERUSER="--user=$USER.$GROUP"
fi

echo "Initializing Zebra Server"

# create run and lock directories if needed;
# /var/run and /var/lock are completely cleared at boot
# on some platforms
if [[ ! -d $RUNDIR ]]; then
umask 022
mkdir -p $RUNDIR
if [[ $EUID -eq 0 ]]; then
    chown $USER:$GROUP $RUNDIR
fi
fi
if [[ ! -d $LOCKDIR ]]; then
umask 022
mkdir -p $LOCKDIR
mkdir -p $LOCKDIR/biblios
mkdir -p $LOCKDIR/authorities
mkdir -p $LOCKDIR/rebuild
if [[ $EUID -eq 0 ]]; then
    chown -R $USER:$GROUP $LOCKDIR
fi
fi
