# Pull Alpine Image
FROM alpine:latest

LABEL maintainer="Ronald Robinson <ronald@fastmail.com>"

VOLUME ["/etc/openvpn"]



CMD [ "run" ]

ADD ./bin /usr/local/bin
RUN chmod a+x /usr/local/bin/*

ADD ./otp/openvpn /etc/pam.d/
