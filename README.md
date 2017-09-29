### Первичные настройки

Что такое Vagrant? [Прочитать](https://ru.wikipedia.org/wiki/Vagrant)

Скачать можно тут: [Vagrant](https://www.vagrantup.com/)

### Описание директории

```
vagrant Директория
	local.yml - файл настроек
	provision.sh - файл запускающие скрипты bash
	apache_restart.sh - файл перезапуска apache
	php.sh - установщик php
	mysql.sh - установщик mysql
	apache.sh - устрановщик apache
	postinstall.sh - файл после установки (настрока)

	config Директория
		netcat.conf - Виртуальный хост для Apache

		php Директория
			php_apache.ini Настройки для php

Vagrantfile - файл для запуска Vagrant

```


### Поднять виртуальну машину
```bash
vagrant up
```

### Зайти в виртуальную машину
```bash
vagrant ssh 
```