# Ansible para Trinity (En contrucción)
Este repositorio se intenta automatizar y facilitar el proceso de instalación de un nodo de [Trinity](https://trinity.ethereum.org/) con [Ansible](https://www.ansible.com/), el sistema utilizado es Ubuntu 16.04LTS. 

_En el proceso de desarrollo cualquier aporte es bienvenido._

## En este repositorio se puede encontrar:
* [.gitignore](.gitignore) 
    Es usado para los datos que no queremos que sean relevados en Github.

* [ansible.cfg](ansible.cfg) 
    
    Es usado para la configuración de Ansible.

* [roles](roles) 
    
    En esta carpeta se encuentran los _playbooks_ para Ansible.

* [inventory-trinity](roles/inventory-trinity) 
    
    Aqui encontramos los equipos a los que queremos hacer la instalación(_Este archivo debemos tenerlo en una carpeta oculta en nuestro home llamada `.ansible`_).

## Pasos para la instalación:

> Nos situamos en la carpeta de `roles` en la terminal y escribimos:

`ansible-playbook -l vtrinity roles/add-repo.yml -b -K `

`ansible-playbook -l vtrinity roles/install-packages.yml -b -K ` 

`ansible-playbook -l vtrinity roles/scommands.yml `

`ansible-playbook -l vtrinity roles/run-trinity.yml `