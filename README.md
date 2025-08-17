# Wnow Installer

## Installation

### Support on
<img src="https://upload.wikimedia.org/wikipedia/commons/a/af/Tux.png" alt="Linux" width="32" height="32">

Download the installer:

```bash
curl -fsSL https://raw.githubusercontent.com/avezoor/wnow/refs/heads/main/install.sh -o install.sh
````

Make it executable:

```bash
chmod +x install.sh
```

Run the installer:

```bash
./install.sh
```

Remove the installer file afterwards:

```bash
rm ./install.sh
```

## Features

* Automatically adds Wnow function to `~/.bashrc`.
* Prevents duplicate installation.
* Sources `.bashrc` after setup for immediate use.
* Downloads the latest setup script from the official Wnow repository.
