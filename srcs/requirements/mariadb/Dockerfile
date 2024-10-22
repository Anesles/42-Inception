FROM 	debian:bullseye
EXPOSE 	3306
RUN		apt update && \
		apt install -y --no-install-suggests mariadb-server && \
		rm -rf /var/lib/apt/lists/*