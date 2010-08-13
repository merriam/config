cd ~
rm .bashrc; ln -s config_linux/.bashrc .
rm .gitconfig; ln -s config_linux/.gitconfig .
rm .gitignore; ln -s config_linux/.gitignore .
rm .profile; ln -s config_linux/.profile .
rm .bash_aliases; ln -s config_linux/.bash_aliases .
echo "Most files set up.  Remember to add your own .bash_site file.  You have these in your private directory."
ls -la config_linux/private


