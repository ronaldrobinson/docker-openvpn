# Pull Alpine Image
FROM alpine:latest

LABEL maintainer="Ronald Robinson <ronald@fastmail.com>"

VOLUME ["/etc/openvpn"]

# 'docker run -p 443:7900/tcp'
EXPOSE 7900/udp

CMD [ "ovpn_run" ]

ADD ./bin /usr/local/bin
RUN chmod a+x /usr/local/bin/*

ADD ./otp/openvpn /etc/pam.d/
