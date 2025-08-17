wnow() {
    if [ "$1" == "up" ]; then
        sudo apt update && sudo apt upgrade -y
        sudo apt autoremove -y
        sudo apt autoclean -y
    elif [ "$1" == "del" ]; then
        sudo apt remove -y "$2" && sudo apt purge -y "$2" && sudo apt autoremove -y
    elif [ "$1" == "home" ]; then
        cd ~
    elif [ "$1" == "desk" ]; then
        cd ~/Desktop
    elif [ "$1" == "find" ]; then
        apt list --installed | grep "$2"
    elif [ "$1" == "fix" ]; then
        sudo apt --fix-broken install
    else
        echo -e "\e[32m[Wnow Setup]\e[0m command not found"
    fi
}
