sudo apt -y install curl
sudo apt -y install make
sudo apt -y install yarn
sudo apt -y install php
sudo apt -y install tar
sudo apt -y install gzip
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo docker-compose --version
sudo service docker start
sudo apt -y update
git clone https://github.com/sped-tx-net/opensalt
cd opensalt
git checkout help
cp .env.dist .env
sudo make up
sudo make force-build
sudo make migrate
echo "INSTALLATION COMPLETE!"
