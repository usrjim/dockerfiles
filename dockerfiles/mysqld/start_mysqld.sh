#!/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then
    mysql_install_db

    /usr/bin/mysqld_safe &
    sleep 5s

    echo "GRANT ALL ON *.* TO admin@'%' IDENTIFIED BY 'abc' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql

    killall mysqld
    sleep 5s
fi

/usr/bin/mysqld_safe

