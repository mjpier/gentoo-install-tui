#!/bin/bash

virt-install \
	--connect=qemu:///system \
	--name=vm-gentoo-zfs \
	--vcpus=2 \
	--memory=2048 \
	--cdrom=/vm/images/archlinux-2021.05.01-x86_64.iso \
	--disk path=/vm/disks/disk-vm-gentoo-zfs.disk,size=25 \
	--graphics none \
	--console pty,target.type=virtio \
	--serial pty \
	--extra-args 'console=ttyS0,115200n8 --- console=ttyS0,115200n8' \
	--os-variant=gentoo \
	--noautoconsole

# virsh