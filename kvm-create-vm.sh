#!/usr/bin/env bash

mkdir -p /tmp

wget -O /tmp/CentOS-7-x86_64-Minimal-1611.iso http://mirror.yandex.ru/centos/7/isos/x86_64/CentOS-7-x86_64-Minimal-1611.iso

sudo virt-install --name mkdev-vm-10 \
--location /tmp/CentOS-7-x86_64-Minimal-1611.iso \
--initrd-inject ./ks.cfg \
--extra-args ks=file:/ks.cfg \
--memory=1024 --vcpus=1 --disk size=8