# New Ubuntu Installation

```bash
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && \
sudo apt install build-essential dkms linux-headers-$(uname -r) -y && \
sudo apt install git -y
```
Then
```
git clone https://github.com/ShuRaw/ubuntu.git && cd ubuntu && sh init.sh
```
