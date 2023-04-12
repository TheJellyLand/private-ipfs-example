# Private IPFS Deployment
This docker-compose.yml setup can be useful for deploying a 3 node IPFS cluster locally.
When testing applications it is useful to develop in a non-production environment.
This should make it easy to deploy and get testing!

## Pre Req
Install `ipfs-cluster-ctl` from [here](https://dist.ipfs.tech/#ipfs-cluster-ctl)

Install docker and docker-compose.

Create `.env` file with the environment variable `CLUSTER_SECRET=` and place your secret value after the `=`.
The value should be a 32-bit hex encoded random string.

Don't forget to `source .env` or restart the terminal.

## Start IPFS Cluster
```
docker-compose up -d
```

# Test the Deployment
The following commands can be very useful for testing the cluster deployment locally. 

## Inspect Peer List
```
./ipfs-cluster-ctl peers ls
```

## Get IPFS HTTP Headers
```
curl -X POST 'http://127.0.0.1:5001/api/v0/config?arg=API.HTTPHeaders'
```

## Get IPFS File
```
curl http://127.0.0.1:8080/ipfs/<filehash>
```



