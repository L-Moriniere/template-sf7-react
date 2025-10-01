up:
	docker compose up -d

build:
	docker compose up --build -d

down:
	docker compose down

restart:
	docker compose down
	docker compose up --build

backend-bash:
	docker compose exec backend bash

frontend-bash:
	docker compose exec frontend sh

migrate:
	docker compose exec backend php bin/console doctrine:migrations:migrate --no-interaction

fixtures:
	docker compose exec backend php bin/console doctrine:fixtures:load --no-interaction

clear:
	docker compose exec backend php bin/console cache:clear

validate-db:
	docker compose exec backend php bin/console doctrine:database:validate

create-db:
	docker compose exec backend php bin/console doctrine:database:create

psql:
	docker compose exec database psql -U root -d app

frontend-install:
	cd frontend && npm install

frontend-build:
	cd frontend && npm run build

frontend-dev:
	cd frontend && npm run dev

