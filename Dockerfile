FROM alpine

RUN apk add --no-cache xmltv perl-json perl-digest-hmac perl-lwp-protocol-https
ADD https://raw.githubusercontent.com/zubrick/tv_grab_fr_telerama/master/tv_grab_fr_telerama /usr/bin/
COPY genres.pl /usr/bin/
RUN chmod +x /usr/bin/tv_grab_fr_telerama /usr/bin/genres.pl
COPY tv_grab_fr_telerama.conf /config
COPY tv_grab_fr_telerama.sh /etc/periodic/daily
VOLUME ["/data","/config"]
CMD crond -fl8
