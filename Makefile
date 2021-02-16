## Dex
dex:
	sudo mkdir -p /var/dex
	sudo chown -R ${USER} /var/dex
	docker network create web ||:
	docker-compose -f demo/docker-compose.yml up -d
stop:
	docker-compose -f demo/docker-compose.yml down


## Demo app
docker:
	docker build . -t 2da-demo:dev
	docker run --rm --network web -p 5555:5555 2da-demo:dev
serve:
	go run .