# Ansible para Trinity (En contrucción :bomb:)
Este repositorio intenta automatizar y facilitar el proceso de instalación de un nodo de [Trinity](https://trinity.ethereum.org/) con [Ansible](https://www.ansible.com/), el sistema utilizado es Ubuntu 16.04LTS. 

[Aquí](https://www.ansible.com/resources/get-started) la documentación de Ansible.

_En el proceso de desarrollo cualquier aporte es bienvenido._

## En este repositorio se puede encontrar:
* [.gitignore](.gitignore) 

    Es usado para los datos que no queremos que sean relevados en Github.

* [ansible.cfg](ansible.cfg) 
    
    Es usado para la configuración de Ansible.

* [roles](roles) 
    
    En esta carpeta se encuentran los _playbooks_ para Ansible.

* [inventory-trinity](roles/inventory-trinity) 
    
    Aqui encontramos los equipos en los cuales queremos hacer la instalación (_Este archivo debemos tenerlo en una carpeta oculta en nuestro home llamada `.ansible`_).

## Pasos para la instalación:

> Nos situamos en la carpeta de `roles` en la terminal y escribimos (_en el playbook `run-trinity.yml` hay que modificar la ruta donde queremos que nos instale el script_):

`ansible-playbook -l vtrinity roles/add-repo.yml -b -K `

`ansible-playbook -l vtrinity roles/install-packages.yml -b -K `

`ansible-playbook -l vtrinity roles/commands.yml `

`ansible-playbook -l vtrinity roles/scommands.yml `

`ansible-playbook -l vtrinity roles/run-trinity.yml `




# Descargo de responsabilidad :hear_no_evil: :

Este repositorio esta en construcción, y puede haber partes que fallen o no respondan como se espera.

Se añade un repositorio externo sin auditar en el playbook [add-repo.yml](roles/add-repo.yml). 


# Agradecimientos :sunglasses: : 

Gracias a [Carmelo](https://github.com/melozo) por el workshop sobre Ansible, da gusto tener a personas cerca que te dan su tiempo libre y enseñan a usar herramientas.