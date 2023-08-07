bash_in_konsole(){
    local IFS
    konsole -e bash --rcfile <(printf '. ~/.bashrc; set -m; %s\n' "$*")
}
bash_in_konsole 'sudo dnf update'