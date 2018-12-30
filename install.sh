read -p "enter your non-root user: " USER

# install basic cli tools
apt install -y net-tools vim curl wget perl git

# install various programs tools
apt install -y conky tilda gnome-tweak-tool gnome-shell-extensions chrome-gnome-shell vlc virtualbox virtualbox-ext-pack

# install themes
add-apt-repository ppa:noobslab/themes -y
add-apt-repository ppa:noobslab/icons -y
add-apt-repository ppa:numix/ppa -y
apt install -y arc-icons arc-theme numix-gtk-theme numix-icon-theme-circle

# install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /home/$USER/Downloads/
chown -R $USER:$USER /home/$USER/Downloads/google-chrome-stable_current_amd64.deb
dpkg -i /home/$USER/Downloads/google-chrome-stable_current_amd64.deb

# configure virtualbox
usermod -a -G vboxusers $USER

# goto Downloads and clone git
cd /home/$USER/Downloads
git clone https://github.com/aleksandarstojkovski/xps-9570-ubuntu-post-installation
cp xps-9570-ubuntu-post-installation/tilda/config_0 /home/$USER/.config/tilda/
cp xps-9570-ubuntu-post-installation/conky/conky.conf /etc/conky/

# install google drive
add-apt-repository ppa:alessandro-strada/ppa -y
apt install google-drive-ocamlfuse -y
su - $USER -c "mkdir ~/google-drive"
su - $USER -c "google-drive-ocamlfuse ~/google-drive"

echo "Finish, please reboot your pc."

