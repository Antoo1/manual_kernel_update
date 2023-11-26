# обновление ядра centos centos/7

Описание домашнего задания
1) Обновить ядро ОС из репозитория ELRepo
2) Создать Vagrant box c помощью Packer
3) Загрузить Vagrant box в Vagrant Cloud


# чтобы собрать vagrant box
```bash
$ cd packer
$ packer build centos.json
$ vagrant box add --name centos8-kernel6 centos-8-kernel-6-x86_64-Minimal.box
```

# запустить vagrant box
```bash
$ vagrant init centos8-kernel6
$ vagrant up 
```

