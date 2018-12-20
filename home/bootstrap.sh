#!/bin/sh
#
# Initiates the Nginx-Stream container with a volumed stream config file

# Build config from template
echo "Boostrap :: Building NGINX config from template..."
echo "Injected endpoint: $RDS_CLUSTER_ENDPOINT"
#cp -f /home/rancher/nginx/tpl/mysql-proxy.conf.tpl /home/rancher/nginx/conf/
sed "s/RDS_CLUSTER_ENDPOINT/$RDS_CLUSTER_ENDPOINT/g" /home/rancher/nginx/tpl/mysql-proxy.conf.tpl > /home/rancher/nginx/conf/mysql-proxy.conf

# Rancher config
echo "Boostrap :: Merging cloud-config..."
sudo ros config merge -i /home/rancher/cloud-config.yml

echo "Boostrap :: complete"