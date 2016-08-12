import env_make	

.PHONY: run

run:
	docker run --env DRONE_GITHUB=true --env DRONE_GITHUB_CLIENT=$(GITHUB_CLIENTID) --env DRONE_GITHUB_SECRET=$(GITHUB_CLIENTSECRET) --env DRONE_SECRET="ABC!@#" --env DRONE_OPEN=true  --env DRONE_ADMIN=aroach --volume /tmp/drone:/var/lib/drone --restart=always --publish=8089:8000 --detach=true --name=drone drone/drone:0.5
