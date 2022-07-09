bastion_IP = 51.250.79.19

 someinternalhost_IP = 10.128.0.20

  testapp_IP = 51.250.82.223

  testapp_port = 9292


# Выполнено ДЗ №4

 - [ ] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
 - Подключение к внутренней сети через внешний IP одной командой: ssh -A -t appuser@51.250.81.220 ssh appuser@10.128.0.29 (-A - проброс ключа, команда: $ ssh -t user@host_out ssh user@host_in)
 - Пункт 2

## Как запустить проект:
###HW3
 - Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
 - eval `ssh-agent -s`  (eval $(ssh-agent))
 - ssh-add -L
 - ssh-add  C:/Users/Maria/.ssh/appuser
 - ssh -i  ~/.ssh/appuser -A appuser@51.250.82.223
 - ssh ~/.ssh/appuser -A -t appuser@51.250.79.19 ssh appuser@10.128.0.20
 - sudo pritunl setup-key
 - sudo pritunl default-password ( username: "pritunl")
 ###HW4
 - ssh-keygen -R 51.250.82.223
 - ssh -i  ~/.ssh/appuser -A  yc-user@51.250.82.223
 ####mongo
 - sudo apt-get install -y mongodb
 - sudo systemctl start mongodb
 - sudo systemctl enable mongodb
 - sudo systemctl status mongodb
 ####git
 - sudo apt update
 - sudo apt install git
 - git clone -b monolith https://github.com/express42/reddit.git
 - cd reddit && bundle install
####scripts
#####install_ruby.sh
 - touch install_ruby.sh
 - cat>install_ruby.sh #для окончания ввода текстаCtrl+D
 - cat install_ruby.sh
 - chmod ugo+x ./install_ruby.sh
 -  ls -l ./install_ruby.sh #-rwxrwxr-x 1
 - ./install_ruby.sh
 #####install_mongodb.sh
 - touch install_mongodb.sh
 - cat>install_mongodb.sh #Ctrl+D
 - cat install_mongodb.sh
 - chmod ugo+x ./install_mongodb.sh
 - ls -l ./install_mongodb.sh #вывод -rwxrwxr-x 1
 - ./install_mongodb.sh
 #####deploy.sh
 - touch deploy.sh
 - cat>deploy.sh #Ctrl+D
 - cat deploy.sh
 - chmod ugo+x ./deploy.sh
 - ls -l ./deploy.sh #-rwxrwxr-x 1
 - ./deploy.sh

 ## Конфигураци

```
Maria@DESKTOP-HUB088N MINGW64 ~/.ssh
$  ssh -i ~/.ssh/appuser appuser@10.128.0.20
The authenticity of host '10.128.0.20 (10.128.0.20)' can't be established.
ED25519 key fingerprint is SHA256:W5puiZU7lvbY9DAHBOyTgcMw652FHz0MKx3AY98pdx0.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '10.128.0.20' (ED25519) to the list of known hosts.
Welcome to Ubuntu 20.04.4 LTS (GNU/Linux 5.4.0-121-generic x86_64)
 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage
Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings
Last login: Wed Jul  6 21:44:33 2022 from 10.128.0.25
appuser@someinternalhost:~$
```

## Как проверить работоспособность
