#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.
sudo apt-get update
sudo apt-get install -y build-essential checkinstall


# GHOSTSCRIPT and IMAGEMAGICK
sudo apt-get install -y ghostscript libgs-dev

wget http://www.imagemagick.org/download/ImageMagick-7.0.5-4.tar.gz
tar xvzf ImageMagick-7.0.5-4.tar.gz
cd ImageMagick-7.0.5-4
./configure --with-gslib=yes
make
sudo make install
sudo ldconfig /usr/local/lib

# TESSERACT
sudo apt-get install tesseract-ocr

# PHP IMAGICK EXTENSION
sudo apt-get install php-imagick
