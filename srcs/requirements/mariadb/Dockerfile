FROM	debian:bullseye

RUN		apt update && \
		apt install -y --no-install-recommends --no-install-suggests \
		mariadb-server dos2unix && \
		rm -rf /var/lib/apt/lists/*

COPY	conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY	tools/setup.sh /bin/

RUN		dos2unix /bin/setup.sh && \
		chmod +x /bin/setup.sh

CMD		["setup.sh", "mysqld_safe"]