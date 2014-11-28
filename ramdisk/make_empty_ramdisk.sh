sudo dd if=/dev/zero of=/dev/ram0 bs=1k count=10240
sudo mke2fs -vm0 /dev/ram0 10240
sudo tune2fs -c 0 /dev/ram0
sudo dd if=/dev/ram0 bs=1k count=10240 | gzip -v9 > ramdisk_empty.gz
