start:
	sudo service docker start
	docker-compose up -d
stop :
	docker-compose stop
restart:
	docker-compose restart
down:
	docker-compose down
build:
	sudo service docker start
	docker-compose up --build -d