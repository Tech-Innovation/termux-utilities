echo "Installing tur-repo repository (Termux User packages)..."
pkg i tur-repo -y
echo "tur-repo repository installed."

echo "Installing MongoDB..."
pkg i mongodb -y
echo "MongoDB installed."

mkdir -p $PREFIX/var/lib/mongodb
mkdir -p $PREFIX/var/log
touch $PREFIX/var/log/mongodb.log