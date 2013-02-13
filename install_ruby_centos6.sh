#!/usr/bin/env bash
# repository
cd /tmp
wget http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-7.noarch.rpm
rpm -Uvh epel-release-6-7.noarch.rpm
 
# system update
yum -y update
yum -y groupinstall "Development Tools"
yum -y install libxslt-devel libyaml-devel libxml2-devel gdbm-devel libffi-devel zlib-devel openssl-devel libyaml-devel readline-devel curl-devel openssl-devel pcre-devel git memcached-devel valgrind-devel mysql-devel ImageMagick-devel ImageMagick
 
# ruby 1.9.3
version=1.9.3-p286
cd /usr/local/src
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-$version.tar.gz
tar zxvf ruby-$version.tar.gz
cd ruby-$version
./configure
make
make install
 
# ruby-gems
version=1.8.24
cd ..
wget http://production.cf.rubygems.org/rubygems/rubygems-$version.tgz
tar zxvf rubygems-$version.tgz
cd rubygems-$version
/usr/local/bin/ruby setup.rb
 
# chef-solo
gem install bundler chef ruby-shadow --no-ri --no-rdoc
