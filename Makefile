first:
	docker compose -f ./init.yml run composer install
second:
	docker compose -f ./init.yml run composer create-project slim/slim-skeleton apps/otel-slim-tutrial

