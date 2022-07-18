bastion_IP = 51.250.79.19

 someinternalhost_IP = 10.128.0.20

  testapp_IP = 51.250.3.113

  testapp_port = 9292


# Выполнено ДЗ №5

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

### HW4
 - ssh 51.250.3.113
 - ssh-keygen -R 51.250.3.113
 - ssh -i  ~/.ssh/appuser -A  yc-user@51.250.3.113

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
 - chmod +x ./install_ruby.sh
 -  ls -l ./install_ruby.sh #-rwxrwxr-x 1
 - ./install_ruby.sh
 #####install_mongodb.sh
 - touch install_mongodb.sh
 - cat>install_mongodb.sh #Ctrl+D
 - cat install_mongodb.sh
 - chmod +x ./install_mongodb.sh
 - ls -l ./install_mongodb.sh
 - ./install_mongodb.sh
 #####deploy.sh
 - touch deploy.sh
 - cat>deploy.sh #Ctrl+D
 - cat deploy.sh
 - chmod +x ./deploy.sh
 - ls -l ./deploy.sh
 - ./deploy.sh
 - git add --chmod=+x install_ruby.sh



### HW5

- yc iam service-account create --name $SVC_ACCT --folder-id $FOLDER_ID
- yc iam service-account list
- yc iam key create --service-account-id $SVC_ACCT_ID --output F:/devops_otus/yandex.cloud.key/key.json
- yc vpc network list
- yc vpc subnet list
- packer validate ./ubuntu16.json
- packer build ./ubuntu16.json
- ssh -i ~/.ssh/appuser yc-user@51.250.81.71
- sudo apt-get update
- sudo apt-get install -y git
- git clone -b monolith https://github.com/express42/reddit.git
- cd reddit && bundle install
- puma -d




 ## Конфигурации


## Как проверить работоспособность
