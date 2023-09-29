commit-only:
	git add --verbose :/ .
	git commit -m "$(message)"

commit: commit-only
	git pull
	git push --verbose

down:
	docker compose down

image-sh:
	docker exec -it $(service) sh

stop:
	docker compose stop $(service)

up:
	docker compose up -d $(service)