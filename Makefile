FIG=docker-compose
HAS_DOCKER:=$(shell command -v $(FIG) 2> /dev/null)

ifdef HAS_DOCKER
	EXEC=$(FIG) exec app
	EXEC_DB=$(FIG) exec EXEC_DB
else
	EXEC=
	EXEC_DB=
endif

CONSOLE=php bin/

check:
	$(EXEC) composer check
csfix:
	$(EXEC) composer fix
install:
	$(EXEC) composer install

start:
	docker-compose up
start-daemon:
	docker-compose up -d
stop:
	docker-compose down

restart: stop start-daemon
