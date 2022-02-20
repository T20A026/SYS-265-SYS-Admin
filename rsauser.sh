echo "user $1"

if [ -d "/home/$1/.ssh" ]
then
    echo "Directory was found!"
    sleep 15
    cd /home/$USER/SYS265
    git pull
    sudo cp /home/$USER/SYS265/linux/public-keys/id_rsa.pub /home/$1/.ssh/authorized_keys
    chmod 700 /home/$1/.ssh
    chmod 600 /home/$1/.ssh/authorized_keys
    chown -R $1:$1 /home/$1/.ssh
    echo "Done"
else
    echo "Directory was not found!"
    sudo useradd -m -d /home/$1 -s /bin/bash $1
    sudo mkdir -p /home/$1/.ssh
    cd /home/root/SYS265
    git pull
    sudo cp /home/$USER/SYS265/linux/public-keys/id_rsa.pub /home/$1/.ssh/authorized_keys
    sudo chmod 700 /home/$1/.ssh
    sudo chmod 600 /home/$1/.ssh/authorized_keys
    sudo chown -R $1:$1 /home/$1/.ssh
    sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
    /etc/init.d/ssh restart
    echo "Done"
fi
