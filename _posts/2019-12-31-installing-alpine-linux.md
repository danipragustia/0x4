---
layout: post
title: "Installing Alpine Linux"
tags: [English, Linux]
---

I'm using Debian Stable for almost 2 years ago, because this work out-of-box. I'm tried other distribution before like Ubuntu, Arch Linux and also NixOS, but still I came back to Debian when I always screw up something and Internet doesn't solve my problem.

**NOTE : I'm not Linux Expert, I using Windows 10 for mostly time. This only my experience installing Alpine Linux on real computer.**

# Installing Alpine Linux
Download Alpine Linux ISO you can actually [download here](https://alpinelinux.org/downloads/) and install it to live media, in this case I will use dd command

```dd bs=4M if=path/to/alpine-linux.iso of=/dev/sdx status=progress oflag=sync```

Replace sdx with your drive, example **/dev/sdb** (without a partition number).

Boot from your drive, login as root without password (let it blank).

You can run setup by running `setup-alpine` command and select disk to install, but in my case. I need dual-booting with Windows, so here my workflow.

First, Run `setup-alpine`, you'll promoted `Which disk your like to use?` Answer `None`, and other prompt answer is `None` and another one `None`.

Now it's time, We need configure our partition. My Partition looks like this
```
Device     Boot     Start       End   Sectors   Size Id Type
/dev/sda1  *         2048    206847    204800   100M  7 HPFS/NTFS/exFAT
/dev/sda2          206848 215541759 215334912 102.7G  7 HPFS/NTFS/exFAT
/dev/sda3       215541760 567465983 351924224 167.8G  7 HPFS/NTFS/exFAT
/dev/sda4       567465984 625141759  57675776  27.5G 83 Linux
```

I will use `/dev/sda1` as `boot` partition and `/dev/sda4` as `root`.

Now I need install `e2fsprogs` and format partition `boot` and `root`

```
apk add e2fsprogs
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda4
```

After that, Mount the newly formatted partition.

```
mount -t ext4 /dev/sda4 /mnt
mount -t ext4 /dev/sda1 /mnt/boot
```

And then, install Alpine Linux to partition.

```setup-disk -m sys /mnt```

# Setup GRUB

Boot to your Alpine Linux, and login as root. And then Install GRUB

```
apk add grub grub-bios
grub-install
```

When Installation complete, make configuration GRUB.

```grub-mkconfig -o /boot/grub/grub.cfg```

Optionally you can remove `syslinux` with command:

```apk del syslinux```

Edit your grub.cfg file you can use **nano** or **vim**, I will use **vim**, so command is:

```vim /boot/grub/grub.cfg```

Add new line after Alpine Linux Command with text below:

```
menuentry 'Windows'  {
    insmod part_msdos
    insmod ntfs
    insmod ntldr
    set root='hd0,msdosx'
    search --no-floppy --fs-uuid --hint-bios=hd0,msdosx --hint-efi=hd0,msdosx --hint-baremetal=ahci0,msdosx [YOUR_UUID_HERE]
}
```

Replace **msdosx** with your partition number for example **msdos2** for **/dev/sda2**

For **[YOUR_UUID_HERE]** you need replace with your partition UUID with command below:

```lsblk -f```

Result command is like this :

```
NAME   FSTYPE LABEL UUID                                 FSAVAIL FSUSE% MOUNTPOINT
sda                                                                     
├─sda1 ext4         0ec2f530-8223-4c79-b4f9-a803df4e7608   59.2M    29% /boot
├─sda2 ntfs         D4B6DB4FB6DB312A                                    
├─sda3 ntfs         30A615A7A6156F1A                                    
└─sda4 ext4         09ec3a07-e290-4672-b19d-4340e687bf79   23.8G     7% /

```

You can see partition **sda2** UUID is **D4B6DB4FB6DB312A**

# Test-Drive
I am testing this on super low-end computer, **AMD X2 240 @ 2.8GHz** with **2 GB RAM**. Window Manager I use for this test is **Sway**. Here some approach when I use Alpine Linux.

Its very smooth nothing crash and annoying bug on Window Manager, but many packages is missing, some my basics is not there, but on **edge** repositories. I tried to add it on and I facing more **bugs** because package is still not quite yet to use.

### Some bug encounter
If your know anything for to fix this, please let me know.
- **GTK** Issue on Firefox **(firefox-71.0-r1)**, Chromium **(79.0.3945.88-r0)** and GIMP **(2.10.12-r2)** or maybe effects to other GTK-based Application.

### Closing Up
Using Desktop in Alpine Linux is like cross a river, your have to be prepared with coming waves. But after your pass it, your learn something.

Source
https://wiki.archlinux.org/index.php/USB_flash_installation_media#Using_dd
https://wiki.alpinelinux.org/wiki/Installing_Alpine_on_HDD_dualbooting
