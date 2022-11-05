arch-chroot /mnt

ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
date
hwclock --systohc

sed -i 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
locale-gen

echo "LANG=en_US.UTF-8" >> /etc/locale.conf

echo "Hafizdkren" >> /etc/hostname

## root and user passwd manually

useradd -m -G wheel -s /bin/bash hafizdkren

## setup sudo manually

systemctl enable NetworkManager

grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg