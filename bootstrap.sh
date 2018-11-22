sudo yum install -y vim
sudo groupadd docker
sudo gpasswd -a vagrant docker
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum makecache fast
sudo yum install -y docker-ce
test -f /usr/bin/docker-compose && exit
sudo mkdir -p /usr/bin/
sudo curl -L https://github.com/docker/compose/releases/download/1.23.0/docker-compose-`uname -s`-`uname -m` > ./docker-compose
sudo mv docker-compose /usr/bin/.
sudo chmod +x /usr/bin/docker-compose
docker-compose -v

sudo systemctl start docker
docker -v

alias dc='docker-compose'
alias ll='ls -la --color'
