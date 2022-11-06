lsblk

mkfs.fat -F 32 -n Boot /dev/sda1

mkfs.btrfs -L System /dev/sda2

mkfs.btrfs -L Home /dev/sda3 

mkfs.btrfs -L Games /dev/sda4

parted /dev/sda print all
