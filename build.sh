docker run --name registry -d -p 5000:5000 -e UPLINK_ACCESS=$UPLINK_ACCESS -e UPLINK_BUCKET=registry2 ghcr.io/elek/distribution:mniewrzal-d919f5f4
sleep 10
time docker pull localhost:5000/elek/1g
docker stop registry
