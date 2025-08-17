# Wnow Installer

## Installation

### Support on
<img src="https://upload.wikimedia.org/wikipedia/commons/a/af/Tux.png" alt="Linux" width="32" height="32">

1. Download the installer:

```bash
curl -fsSL https://raw.githubusercontent.com/avezoor/wnow/refs/heads/main/install.sh -o install.sh
````

2. Make it executable:

```bash
chmod +x install.sh
```

3. Run the installer:

```bash
./install.sh
```

4. Remove the installer file afterwards:

```bash
rm ./install.sh
```

5. Don't Forget:

```bash
source ~/.bashrc
```

### Uninstall Setup

```bash
wnow uinstall
```
---

## Features

* Automatically adds Wnow function to `~/.bashrc`.
* Prevents duplicate installation.
* Sources `.bashrc` after setup for immediate use.
* Downloads the latest setup script from the official Wnow repository.
