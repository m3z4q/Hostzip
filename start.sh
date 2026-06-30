#!/bin/sh
unzip -o host.zip
cd host
gunicorn app:app