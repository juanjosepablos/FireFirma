#!/bin/bash
# Para que Firefox (en determinadas versiones) confíe en los certificados del sistema, deben contener información de confianza
# Se puede comprobar que en lugar de la cabecera "BEGIN CERTIFICATE", se marcan con "BEGIN TRUSTED CERTIFICATE" 
for cert in /etc/ssl/certs/*.pem; do openssl x509 -in $cert -addtrust serverAuth -out $(basename $cert); done
