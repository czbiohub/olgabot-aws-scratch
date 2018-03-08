sudo yum install git
git clone https://github.com/olgabot/rcfiles
cp rcfiles/.screenrc .
screen

# Make the filesystem
sudo mkfs -t ext4 /dev/xvdz
sudo file -s /dev/xvdz
sudo mkdir /mnt
sudo mount /dev/xvdz /mnt

# # Make this
# sudo cp /etc/fstab /etc/fstab.orig

sudo aws s3 cp --recursive \
  s3://czbiohub-seqbot/fastqs/180128_M05295_0078_000000000-BJNBT /mnt
docker pull kleinstein/immcantation:1.7.0
