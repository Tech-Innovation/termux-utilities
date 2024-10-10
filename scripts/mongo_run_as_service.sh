#!/data/data/com.termux/files/usr/bin/bash
mongod --fork --logpath $PREFIX/var/log/mongodb.log --dbpath $PREFIX/var/lib/mongodb
