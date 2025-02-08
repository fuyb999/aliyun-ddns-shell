 #!/bin/bash

set -e

sleep 6

while [ 1 ]
do
  /opt/aliyunddns/aliyun-ddns.sh -run
  sleep 600
done