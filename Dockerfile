FROM mysql:8.0.18

ENV MYSQL_ALLOW_EMPTY_PASSWORD 'yes'

COPY data/station20190928free.csv /var/lib/mysql-files/
COPY data/user.csv /var/lib/mysql-files/
COPY data/purchase.csv /var/lib/mysql-files/
COPY data/comiket.sql /docker-entrypoint-initdb.d/

# jp setting
# RUN locale-gen ja_JP.UTF-8
# ENV LANG ja_JP.UTF-8
# ENV LANGUAGE ja_JP:en
# ENV LC_ALL ja_JP.UTF-8

