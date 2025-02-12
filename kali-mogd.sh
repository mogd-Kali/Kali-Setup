!/bin/bash
echo "Kali linux light 32 bit for vnc "
echo "kali by mogd "
echo "Download Files"
echo "Version 3.6.7"




set -x
cd
pkg update -y
pkg upgrade -y
pkg install x11-repo -y
pkg install termux-api -y
pkg install qemu-system-i386 -y
pkg install wget -y
pkg install qemu-utils -y
pkg install qemu-system-i386-headless -y
mkdir kali-qemu
cd kali-qemu
wget https://archive.org/download/klq_20250212/KLQ.iso

qemu-img create -f qcow2 KLQ-disk.img 5G

set +x




echo "
****for start****
cd kali-qemu
qemu-system-i386 -smp 2 -net nic -net user -device AC97 -m 2048 -vnc 127.0.0.1:1 -cdrom KLQ.iso -hda KLQ-disk.img"

echo " VNC: 127.0.0.1:1 "