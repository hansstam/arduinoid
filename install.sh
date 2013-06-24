cd /data/data/com.hansstam
wget http://andavr.googlecode.com/files/busybox
chmod 777 ./busybox
wget http://andavr.googlecode.com/files/local.tar.gz
./busybox gzip -d ./local.tar.gz
./busybox tar -xvf ./local.tar
rm ./busybox
