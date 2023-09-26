```.
├── consul-data
├── docker-compose.yml
├── README.md
├── vault-config
│   └── vault.hcl
└── vault-data
``

```
openssl genpkey -algorithm RSA -out vault.key
openssl req -new -key vault.key -out vault.csr -subj "/CN=localhost"
openssl x509 -req -days 365 -in vault.csr -signkey vault.key -out vault.crt
```
