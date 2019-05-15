#INICIO
FROM ubuntu:14.04
LABEL maintainer="JOM <example@example.com>"

RUN  apt-get update && apt-get -y upgrade
RUN apt-get installl -y mysql-server dnsutils

ADD my.cnf /etc/mysql/conf.d/my.cnf
ADD script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

CMD ["/usr/local/bin/script.sh"]

#FIN