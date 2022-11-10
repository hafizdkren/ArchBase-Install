mkdir -p /mnt/home/hafizdkren/Games
mount -o rw,noatime,nodatacow,noautodefrag,compress=zstd:10,space_cache=v2,subvolid=5,subvol=@Games /dev/sda4 /mnt/home/hafizdkren/Games

lsblk
