#!/bin/bash

# url - https://cerebroapp.com/
# Download 0.3.1

sudo wget -c https://github.com/KELiON/cerebro/releases/download/v0.3.1/cerebro-0.3.1-x86_64.AppImage

sudo mv cerebro-0.3.1-x86_64.AppImage /opt/
sudo chmod +x /opt/cerebro-0.3.1-x86_64.AppImage

touch ~/.config/autostart/cerebro.desktop

cat >~/.config/autostart/cerebro.desktop <<EOL
[Desktop Entry]
  Encoding=UTF-8
  Version=0.3.1
  Name=Cerebro
  Comment=Spootligh
  Exec=/opt/cerebro-0.3.1-x86_64.AppImage
  Terminal=false
  Type=Application
EOL

# paste in /opt/cerebroAppImage
# place a command in inicialize to call de cerebroAppImage
