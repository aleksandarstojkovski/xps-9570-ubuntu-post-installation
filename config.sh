read -p "enter your non-root user: " USER

# install basic cli tools
apt install net-tools vim curl wget perl git

# install various programs tools
apt install conky tilda gnome-tweak-tool gnome-shell-extensions chrome-gnome-shell vlc virtualbox virtualbox-ext-pack

# install themes
add-apt-repository ppa:noobslab/themes
add-apt-repository ppa:noobslab/icons
add-apt-repository ppa:numix/ppa
apt install arc-icons arc-theme numix-gtk-theme numix-icon-theme-circle

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

echo "Finish, please reboot your pc."

