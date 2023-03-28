#!/bin/bash

# Update system
apt-get update && apt-get upgrade -y

# Install libpq-dev with specific version of libpq5
apt-get install -y libpq-dev=11.19-0+deb10u1 libpq5=11.19-0+deb10u1

# Update Python packages
pip3 install --upgrade pip setuptools

# Install system packages
apt install -y python-dev python3-dev libxml2-dev libxslt1-dev zlib1g-dev libsasl2-dev libldap2-dev build-essential libssl-dev libffi-dev liblzma-dev libjpeg-dev libbz2-dev libjpeg62-turbo-dev libmariadb-dev-compat swig gcc nano openssh-server fail2ban python3-pip git

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Activate Rust environment
source $HOME/.cargo/env

#Configurar git
export PATH=$PATH:/usr/bin/git
source ~/.bashrc

# Install Rust packages
cargo install pyopenssl --version=0.10.1

# Install Python packages
pip3 install M2Crypto<=0.32 httplib2>=0.7 git+https://github.com/pysimplesoap/pysimplesoap@stable_py3k fpdf==1.7.2 dbf==0.88.019 Pillow>=2.0.0 git+https://github.com/reingart/pyafipws@py3k paramiko==2.7.2 wheel pyOpenSSL


# Upgrade Python packages
pip3 install --upgrade pip setuptools



