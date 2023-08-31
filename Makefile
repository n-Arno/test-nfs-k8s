build:
	./build.sh 1
	./build.sh 2
	./build.sh 3

delete:
	./delete.sh 1
	./delete.sh 2
	./delete.sh 3

image:
	docker build . -t ghcr.io/n-arno/volume-nfs:updated && docker push ghcr.io/n-arno/volume-nfs:updated
