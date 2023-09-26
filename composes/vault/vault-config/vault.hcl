ui = true

storage "consul" {
  address = "consul:8500"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 0
  tls_cert_file = "/vault/tls/vault.crt"
  tls_key_file  = "/vault/tls/vault.key"
}

api_addr = "http://0.0.0.0:8200"
