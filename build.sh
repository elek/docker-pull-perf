dd if=/dev/urandom of=100mb count=102400 bs=1024
docker build -t ghcr.io/elek/1g .
docker push ghcr.io/elek/1g
