#!/bin/bash
chmod 775 /var/log/php5 /var/log/apache2; find /var/log/php5 /var/log/apache2 -type f -exec chmod 644 {} \; ; chown -R user:www-data /var/log/php5 /var/log/apache2
exec /usr/bin/supervisord -c /etc/supervisord.conf
