alias vialias="vi_and_source ~/.bash_aliases"
alias virc="vi_and_source ~/.bashrc"
alias visite="vi_and_source ~/.bash_site"
alias g="cd /home/chasm/p/s;source go"
alias go='gnome-open'


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

