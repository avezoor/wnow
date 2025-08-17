wnow() {
    if [ "$1" == "up" ]; then
        sudo apt update && sudo apt upgrade -y
    else
        echo "Unknown command: $1"
    fi
}
