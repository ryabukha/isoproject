#!/bin/bash

BUILD=iso

IMAGE=ubuntu-20.04.2.0-desktop-amd64.iso

# Распаковываем образ в директорию

rm -rf $BUILD/

mkdir $BUILD/

echo "** Mounting image..."

sudo mount -o loop $IMAGE $PWD/mnt/

echo "** Syncing..."

rsync -av $PWD/mnt/ $BUILD/

chmod -R u+w $BUILD/

sudo umount $PWD/mnt/
