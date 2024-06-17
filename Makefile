CONTAINERS_DIR = /home/ealgar-c/data

all:
	@ mkdir -p $(CONTAINERS_DIR) $(CONTAINERS_DIR)/webcontent $(CONTAINERS_DIR)/db_volume
	@ docker compose -f srcs/docker-compose.yml up --build

clean:
	@ rm -rf $(CONTAINERS_DIR)/webcontent $(CONTAINERS_DIR)/db_volume
	@ docker stop $$(docker ps -qa); docker rm $$(docker ps -qa); docker rmi -f $$(docker images -qa); docker volume rm $$(docker volume ls -q); docker network rm $$(docker network ls -q) 2>/dev/null