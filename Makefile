new:
	docker-compose up -d
update:
	git pull
	docker-compose pull
	docker-compose up --force-recreate --build -d
	docker image prune -f
build:
	docker build -t webserver .
start:
	docker run -it --rm -d -p 80:80 --name web webserver