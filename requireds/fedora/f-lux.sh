#!/bin/bash
#https://justgetflux.com/linux.html
wget -c https://justgetflux.com/linux/xflux64.tgz
tar -xzf xflux64.tgz

mv xflux /usr/bin/
chmod 755 /usr/bin/xflux
chown root:root /usr/bin/xflux

#latitude = -26.9165792
#longitude = -49.0717331

cat >~/.config/autostart/xflux.desktop <<EOL
[Desktop Entry]
  Encoding=UTF-8
  Version=1.0
  Name=xflux
  Comment=Adapts screen color temperature according to daytime
  Exec=/usr/bin/xflux -l 26.9 -g 49
  Terminal=false
  Type=Application
EOL

/usr/bin/xflux -l 26.9 -g 49
