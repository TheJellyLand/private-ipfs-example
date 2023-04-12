#!/bin/sh
set -ex
ipfs bootstrap rm all
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin  '["http://localhost:3000"]'
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "POST", "GET"]'
