yum install autoconf automake libtool zlib-devel libjpeg-devel openssl-devel
git clone https://github.com/FreeSWITCH/FreeSWITCH.git
cd FreeSWITCH/
./bootstrap.sh 
./configure 
make -j 4
make install
