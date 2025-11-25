@echo off
cls
docker compose exec symfony_test symfony server:stop
docker compose exec symfony_test symfony server:start -d --no-tls --listen-ip=0.0.0.0