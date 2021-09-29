start:
	sudo service docker start
	docker-compose up -d
stop :
	docker-compose stop
down:
	docker-compose down
build:
	sudo service docker start
	docker-compose up --build -d