#!/bin/bash#!/bin/bash

# Kullanıcının tercih ettiği metin editörü
EDITOR=${EDITOR:-"nano"}  # Eğer $EDITOR değişkeni ayarlanmamışsa, varsayılan olarak nano kullanılır.

# /etc/default/grub dosyasını açıyoruz ve düzenliyoruz.
if [ "$EDITOR" == "gedit" ]; then
    sudo gedit /etc/default/grub
elif [ "$EDITOR" == "nano" ]; then
    sudo nano /etc/default/grub
elif [ "$EDITOR" == "vim" ]; then
    sudo vim /etc/default/grub
else
    echo "Desteklenmeyen editör. Lütfen 'gedit', 'nano' veya 'vim' kullanın."
    exit 1
fi

# GRUB_CMDLINE_LINUX_DEFAULT satırını kontrol et
if grep -q 'GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"' /etc/default/grub; then
    # Satırı güncelle
    sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash fsck.mode=force fsck.repair=yes"/' /etc/default/grub
else
    echo "İlgili satır bulunamadı. Lütfen manuel olarak düzenleyin."
    exit 1
fi

# GRUB güncelleniyor
sudo update-grub

echo "GRUB başarıyla güncellendi ve disk onarım seçenekleri eklendi."

