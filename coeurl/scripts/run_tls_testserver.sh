#!/bin/sh

openssl req -x509 -newkey rsa:4096 -nodes -out cert.pem -keyout key.pem -days 365 -subj '/CN=localhost'

./tests/testserver.py "$(pwd)"
