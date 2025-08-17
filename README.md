# Wnow Installer
---

## Features

* Automatically adds Wnow function to `~/.bashrc`.
* Prevents duplicate installation.
* Sources `.bashrc` after setup for immediate use.
* Downloads the latest setup script from the official Wnow repository.

---
  
## Installation on Linux

### Support for
<img src="https://icons.iconarchive.com/icons/papirus-team/papirus-apps/128/distributor-logo-linux-mint-icon.png" width="32" height="32">

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
wnow unset
```
