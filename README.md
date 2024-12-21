# Grub-fsck-Script
This script automates modifying the GRUB configuration on Linux. It opens the /etc/default/grub file with the user’s preferred editor (gedit, nano, or vim), updates the GRUB_CMDLINE_LINUX_DEFAULT line to include disk check and repair options, and runs update-grub to apply the changes for automatic disk checks during boot.

Install Git Clone 

Github Package Must Be Installed On Your Device.
```bash
sudo apt install git  -y
```

----------------------------------

# Installation
```bash
sudo git clone https://github.com/cektor/Grub-fsck-Script.git
```
```bash
cd Grub-fsck-Script/
```
```bash
sudo chmod +x grub.sh
```
```bash
sudo ./grub.sh
```
or

```bash
sudo bash grub.sh
```

