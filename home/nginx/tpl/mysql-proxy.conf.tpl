log_format basic '$remote_addr [$time_local] '
                 '$protocol $status $bytes_sent $bytes_received '
                 '$session_time';

error_log /dev/stdout info;
access_log /dev/stdout basic;

upstream db {
  server RDS_CLUSTER_ENDPOINT:3306;
}

server {
  listen 3306;
  proxy_pass db;
}