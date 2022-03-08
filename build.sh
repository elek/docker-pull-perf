dd if=/dev/random of=100mb count=1024000 bs=1024
docker build -t ghcr.io/elek/1g .
docker push ghcr.io/elek/1g
