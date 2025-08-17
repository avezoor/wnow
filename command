wnow() {
    if [ "$1" == "up" ]; then
        sudo apt update && sudo apt upgrade -y
        sudo apt autoremove -y
        sudo apt autoclean -y
    elif [ "$1" == "del" ]; then
        sudo apt remove -y "$2" && sudo apt purge -y "$2" && sudo apt autoremove -y
    else
        echo -e "\e[32m[Wnow Setup]\e[0m command not found"
    fi
}
