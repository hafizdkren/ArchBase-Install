lsblk

mkfs.fat -F 32 -n Boot /dev/sda1

mkfs.btrfs -f -L System /dev/sda2

mkfs.btrfs -f -L Home /dev/sda3 

mkfs.btrfs -f -L Games /dev/sda4

parted /dev/sda print all
