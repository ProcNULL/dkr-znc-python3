FROM        debian:stable
MAINTAINER  Loetkolben "SirLoetkolben@gmail.com"

ADD         bootstrap.sh /tmp/
RUN         chmod +x /tmp/bootstrap.sh && /tmp/bootstrap.sh

# uid ZNC will be run as. Defaults to 65534 (nobody on debian!).
# Override at container creation time with "docker run --env UID_ZNC=<NEW_UID>"
ENV         UID_ZNC=65534

ADD         start-znc /usr/local/bin/
ADD         znc.conf.default /src/
RUN         chmod 644 /src/znc.conf.default

EXPOSE      6667
ENTRYPOINT  ["/usr/local/bin/start-znc"]
CMD         [""]
