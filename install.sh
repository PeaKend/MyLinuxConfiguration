#!/usr/bin/env bash

# installs Adapta following their instructions at https://github.com/adapta-project/adapta-gtk-theme

sudo rm -rf /usr/share/themes/{Adapta,Adapta-Eta,Adapta-Nokto,Adapta-Nokto-Eta}
rm -rf ~/.local/share/themes/{Adapta,Adapta-Eta,Adapta-Nokto,Adapta-Nokto-Eta}
rm -rf ~/.themes/{Adapta,Adapta-Eta,Adapta-Nokto,Adapta-Nokto-Eta}

git clone https://github.com/adapta-project/adapta-gtk-theme

cd adapta-gtk-theme

./autogen.sh --prefix=/usr
make
sudo make install
