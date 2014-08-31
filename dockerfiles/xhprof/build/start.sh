#!/bin/sh

/usr/bin/php -S 0:8080 -t /var/www/xhgui/webroot/ &
/usr/bin/php -S 0:80 -dauto_prepend_file=/var/www/xhgui/external/header.php -t /www/web

