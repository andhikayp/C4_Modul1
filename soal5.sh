#!/bin/bash

awk '/cron/ || /CRON/ && !/sudo/ && !/SUDO/' /var/log/syslog | awk 'NF<=12' >> /home/andhika/modul1/no_5_sisop.log
