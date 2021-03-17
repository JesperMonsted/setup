export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get upgrade -y

wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
rm -f packages-microsoft-prod.deb

apt-get update
apt-get install -y apt-transport-https
apt-get update
apt-get install -y dotnet-sdk-5.0 dotnet-sdk-3.1

# python

apt-get install -y python3 python3-venv python3-pip

# ruby

apt-get install -y ruby ruby-dev ruby-bundler zlib1g-dev

# nodejs

curl -sL https://deb.nodesource.com/setup_14.x | bash -
apt-get install -y nodejs

apt-get install zsh
