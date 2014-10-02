#!/bin/sh
sudo -u postgres createuser vagrant -s
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
rbenv install 2.1.2
rbenv global 2.1.2
rbenv rehash
gem install rb-readline
gem install rails --no-ri --no-rdoc
gem install travis
rbenv rehash
exec $SHELL
