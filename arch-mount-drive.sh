mount /dev/sda2 /mnt
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
btrfs subvolume create /mnt/@Games
umount /mnt
mount -o rw,noatime,compress=zstd:5,space_cache=v2,subvolid=5,subvol=@ /dev/sda2 /mnt

mkdir -p /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi

mkdir -p /mnt/home
mount -o rw,noatime,nodatacow,noautodefrag,compress=zstd:5,space_cache=v2,subvolid=5,subvol=@home /dev/sda3 /mnt/home

lsblk
