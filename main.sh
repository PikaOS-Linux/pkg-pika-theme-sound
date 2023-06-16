DEBIAN_FRONTEND=noninteractive

# Clone Upstream
mkdir -p ./pika-theme-sound
cp -rvf ./* ./pika-theme-sound || echo
cd ./pika-theme-sound

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
