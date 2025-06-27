curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc | \
  gpg --dearmor | \
  sudo tee /etc/apt/keyrings/mongodb.gpg > /dev/null

echo "deb [signed-by=/etc/apt/keyrings/mongodb.gpg arch=amd64] \
  https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | \
  sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list > /dev/null

sudo apt-get update -qq
sudo apt-get install -y -qq mongodb-atlas-cli

wget -q https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu2404-x86_64-100.12.2.deb -O /tmp/mongodb-tools.deb

sudo dpkg -i /tmp/mongodb-tools.deb

