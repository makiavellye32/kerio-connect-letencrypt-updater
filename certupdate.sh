#!/bin/bash
cowsay -y "Останавливаю керио, подожди"
systemctl stop kerio-connect
cowsay -y "Пытаюсь обновить сертификат"
/opt/letsencrypt/letsencrypt-auto renew 
cowsay -y "Вроде всё, стартуем керио"
systemctl start kerio-connect
