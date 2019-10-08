#sudo apt install libxml2-utils

wget -q -O - https://fuckinghomepage.com/ | xmllint --html --xpath 'html/body/div[2]/div[3]/div[1]/div/p[17]/small/a'
a=$(wget -F -q -O - https://fuckinghomepage.com/ | xmllint --html --xpath '(//a)[9]/@href' - 2>/dev/null)
a$
b=$(echo $a | cut -c 7- | sed 's/.$//')
b=${b//amp;}
c=$(curl -L $b | xmllint --html --xpath '(//meta)[2]/@content' - 2>/dev/null)
d=$( echo $c | cut -c 16- |  sed 's/.$//')

wget --output-document $(date '+%Y-%m-%d')

wallpaper="$(pwd)/$(date '+%Y-%m-%d')"
rm /usr/share/backgrounds/linuxmint/default_background.jpg
cp $wallpaper /usr/share/backgrounds/linuxmint/default_background.jpg


## TODO
## run on startup
## Check if working for all days
