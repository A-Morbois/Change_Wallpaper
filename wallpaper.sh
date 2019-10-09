#sudo apt install libxml2-utils

a=$(wget -F -q -O - https://fuckinghomepage.com/ | xmllint --html --xpath '(//a)[9]/@href' - 2>/dev/null)

b=$(echo $a | cut -c 7- | sed 's/.$//')
b=${b//amp;}
c=$(curl -L $b | xmllint --html --xpath '(//meta)[2]/@content' - 2>/dev/null)
d=$( echo $c | cut -c 16- |  sed 's/.$//')

wallpaper="$(pwd)/$(date '+%Y-%m-%d')"
wget --output-document $wallpaper $d

sudo rm /usr/share/backgrounds/linuxmint/default_background.jpg
sudo cp $wallpaper /usr/share/backgrounds/linuxmint/default_background.jpg


## TODO
## run on startup
## Check if working for all days
