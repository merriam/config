alias vialias="vi_and_source ~/.bash_aliases"
alias virc="vi_and_source ~/.bashrc"
alias visite="vi_and_source ~/.bash_site"
alias viproj="vi_and_source ~/.bash_project"
# go      = open using the default gnome open action'
alias go='gnome-open'
alias rmpyc='find -name "*.pyc" | xargs rm'
alias apts='apt-get install apache2 python nginx'

# vi_and_source = Annoyingly, bash aliases take no parameters and need functions
vi_and_source() {
   vi $*
   source $*
}
cat_files() {
   for file in $*
   do
      echo "***********************"
      echo $file
      echo "***********************"
      cat $file
   done
}

ff() { find . -name "*$1*" -print; }

# check_site_up(uri, match_text)
check_site_up() {
   curl -s "http://$1" | grep -iq "$2" || (echo "$1 is DOWN" && false) && echo "$1 is Up"
}

findpy() { find . -name '*.py' -exec grep -nHr "$1" {} \; ; }

# infect <short_name> <ip>
infect() {
    echo "

Host $1
    Hostname $2
    User root
" >> ~/.ssh/config

ssh-copy-id $1

ssh $1 "apt-get install --yes git-core; git clone http://github.com/merriam/config.git config_linux; cd config_linux; ./make_links.sh"
ssh $1 
}


