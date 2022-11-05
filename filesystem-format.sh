lsblk

mkfs.fat -F 32 /dev/sda1

mkfs.btrfs /dev/sda2

mkfs.btrfs /dev/sda3

parted /dev/sda print all