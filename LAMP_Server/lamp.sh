#

sudo apt-get update
sudo apt-get upgrade -y

# Install apache 
sudo apt-get install apache2 -y

# Enable the service apache2
systemctl start apache2   
systemctl enable apache2

# Install PHP
sudo apt-get install -y apache2 libapache2-mod-php7.0 php7.0-zip php7.0-curl php7.0-json php7.0-gd php7.0-intl php7.0-xml php7.0-mbstring php7.0-mysql php7.0-mcypt php-imagick

# MYSQL: sudo mysql -u root -p
