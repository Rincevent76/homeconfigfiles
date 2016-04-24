#download a fresh copy of nanorc on GitHub
sudo curl -o /usr/share/nano/conf.nanorc https://gist.githubusercontent.com/gilgamesh2k/6168052/raw/51c71daf51898ffebb3ec5e115dc5b6446070bd0/conf.nanorc

if grep -Rq "conf.nanorc" "/etc/nanorc"
then
	#add config lines in /etc/nanorc
	echo "" >> /etc/nanorc 
	echo "## Configuration files" >> /etc/nanorc
	echo 'include "/usr/share/nano/conf.nanorc"' >> /etc/nanorc
	#reload bash
	exec bash
fi


#https://github.com/Rincevent76/homeconfigfiles.git
#install git
#apt-get -y install git
#
#git init   #git init MyGitFolder
#
#git remote add origin https://github.com/Rincevent76/homeconfigfiles.git
#
#echo "*" > ~/.gitignore
#
#git pull origin master
#




