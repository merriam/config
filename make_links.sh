cd ~
rm .bashrc; ln -s config_linux/.bashrc .
rm .gitconfig; ln -s config_linux/.gitconfig .
rm .gitignore; ln -s config_linux/.gitignore .
rm .profile; ln -s config_linux/.profile .
rm .bash_aliases; ln -s config_linux/.bash_aliases .
echo "Most files set up.  Remember to add your own .bash_site and .bash_project files."
echo "You will use 'ln -s config_linux/.bash_<something> .' to link."
echo "Your site files:"
ls -la config_linux/.bash_site* config_linux/private/.bash_site*
echo "Your project files:"
ls -la config_linux/.bash_project* config_linux/private/.bash_project*



