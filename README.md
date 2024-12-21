# Grub-fsck-Script
This script automates modifying the GRUB configuration on Linux. It opens the /etc/default/grub file with the user’s preferred editor (gedit, nano, or vim), updates the GRUB_CMDLINE_LINUX_DEFAULT line to include disk check and repair options, and runs update-grub to apply the changes for automatic disk checks during boot.
