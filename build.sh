docker run --name registry -d -p 5000:5000 -e UPLINK_ACCESS=$UPLINK_ACCESS -e UPLINK_BUCKET=registry2 ghcr.io/elek/distribution:mniewrzal-80ce0748
sleep 10
time docker pull localhost:5000/elek/1g

dd if=/dev/urandom of=100mb count=102400 bs=1024
IMAGE=localhost:5000/elek/1g:`date +%s`
docker build -t $IMAGE .
docker push $IMAGE

docker stop registry
