#!/bin/bash

# https://sourcegear.com/diffmerge/downloaded.php
# https://sourcegear.com/diffmerge/webhelp/sec__inst__fedora.html

wget -c http://download.sourcegear.com/DiffMerge/4.2.0/diffmerge-4.2.0.697.stable-1.x86_64.rpm

sudo dnf -y install libpng15
sudo rpm --install diffmerge-4.2.0.*.rpm

#config
# https://gist.github.com/lnoering/6336f16db929fc4fa5dc

wget -c https://gist.github.com/lnoering/6336f16db929fc4fa5dc/raw/diffmerge-git-config.sh
sh diffmerge-git-config.sh
