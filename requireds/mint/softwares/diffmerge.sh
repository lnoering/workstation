#!/bin/bash

# https://sourcegear.com/diffmerge/downloaded.php
# https://sourcegear.com/diffmerge/webhelp/sec__inst__fedora.html

sudo wget -c http://download.sourcegear.com/DiffMerge/4.2.0/diffmerge_4.2.0.697.stable_amd64.deb -O diffmerge.deb

sudo dpkg -i diffmerge.deb

#config
# https://gist.github.com/lnoering/6336f16db929fc4fa5dc

sudo wget -c https://gist.github.com/lnoering/6336f16db929fc4fa5dc/raw/diffmerge-git-config.sh
sh diffmerge-git-config.sh


