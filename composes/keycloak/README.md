https://hub.docker.com/_/postgres

https://quay.io/repository/keycloak/keycloak?tab=info

- image: quay.io/keycloak/keycloak:19.0.3-legacy
- image: quay.io/keycloak/keycloak:22.0

- export POSTGRES_PASSWORD=postgres_password
- mkdir certs && cd certs
- **openssl req -newkey rsa:2048 -new -nodes -keyout localhost.key -x509 -days 365 -out localhost.crt**
- chmod 777 localhost.crt localhost.key
- https://0.0.0.0:8443/
