# AWS Aurora RDS Nginx Proxy AMI

Builds an AWS EC2 (AMI) that proxies MySQL connections through to an Aurora RDS cluster.

## Usage

1. `cp secrets.json.tpl secrets.json` and fill out AWS CLI key/secret
1. Populate `./home/.ssh/authorized_keys` with known public key
1. Obtain the Aurora cluster endpoint or domain name before executing (for use in `packer build` command)
1. Run:

```
packer build \
  -var 'rds_cluster_endpoint=my.cluster-asklfj23.us-west-2.rds.amazonaws.com' \
  -var-file=secrets.json \
  packer.json
```
