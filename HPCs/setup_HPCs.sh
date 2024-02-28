#! /bin/bash

# Check if exactly one argument is not supplied
if [ "$#" -ne 1 ]; then
    echo "The script takes one argument: the address of the HPC to configure."
    exit 1
fi

# Set the first argument to the variable HPC_ADDRESS
HPC_ADDRESS=$1

# manually run `ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_HPC` before running this script if key doesn't exist already.
ssh-copy-id -i ~/.ssh/id_ed25519_HPC.pub jjohnsto@hpc-l001.aims.gov.au
rsync -av --exclude='python-mode' --exclude='ale' --exclude='.git' ~/.vim jjohnsto@$HPC_ADDRESS:~/
scp ~/.dotfiles/HPCs/.aliases jjohnsto@$HPC_ADDRESS:~/
scp ~/.dotfiles/HPCs/.vimrc jjohnsto@$HPC_ADDRESS:~/
scp ~/.dotfiles/HPCs/.bashrc jjohnsto@$HPC_ADDRESS:~/
