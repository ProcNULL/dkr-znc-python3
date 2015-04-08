# dkr-znc-python3
Dockerfile: ZNC with Python3 module enabled; from jimeh/docker-znc

* Enabled SSL support (default listener now uses SSL with a on-the-fly generated -- when ZNC starts in your container -- certificate)
* Enabled support for Python3 modules

## Defaults
* ZNC listens on :6667 with SSL support enabled
* ZNC User: admin - password: admin (Please change!)
