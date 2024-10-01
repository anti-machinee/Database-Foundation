# install
sudo apt-get install -y adduser libfontconfig1 musl
wget https://dl.grafana.com/enterprise/release/grafana-enterprise_11.1.4_amd64.deb
sudo dpkg -i grafana-enterprise_11.1.4_amd64.deb

# start
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl status grafana-server

# verify
sudo systemctl status grafana-server

# config
sudo systemctl edit grafana-server.service

# restart
sudo systemctl restart grafana-server
