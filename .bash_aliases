alias vialias="vi_and_source ~/.bash_aliases"
alias virc="vi_and_source ~/.bashrc"
alias visite="vi_and_source ~/.bash_site"
alias g="cd /home/chasm/p/s;source go"
alias go='gnome-open'
alias rmpyc="ff *.pyc | xargs rm"


# Annoyingly, bash aliases take no parameters and need functions
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

# two parameters (www.example.com, <title>Example.com)
check_site_up() {
   curl -s "http://$1" | grep -iq "$2" || (echo "$1 is DOWN" && false) && echo "$1 is Up"
}

