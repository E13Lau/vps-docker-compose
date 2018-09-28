
sudo apt-get update
sudo apt-get upgrade -y

curl -fsSL get.docker.com -o get-docker.sh

sh get-docker.sh

curl -L https://github.com/docker/compose/releases/download/1.20.1/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

cd ~/vps-docker-compose/
docker-compose up -d

wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
