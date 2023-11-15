#!/bin/bash

# script que recibe un archivo de log de un webserver donde almacenan las peticiones y las IPs desde la cual se envían
# Este script arroja la IP que más peticiones realizó a la página.
awk '{print $1}' [archivo] | sort | uniq -c | sort -nr | head -n 1
