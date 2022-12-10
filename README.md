# README

Requisitos para correr la app  

* Ruby version = 2.7.6

* Rails version = 7.0.4

*	Linux OS

*	Firefox

* Git


Pasos para correr la app localmente  
Clonar el repo  
* git clone git@github.com:MechiScattini/TTPS-TFI.git

Dentro de la carpeta del proyecto correr los siguientes comandos:  

Genera la base de datos con datos de prueba  
* rails db:seed

Corre el servidor local  
* rails s



Para acceder a la aplicación hay que entrar a la siguiente url desde el navegador Firefox
*	http://127.0.0.1:3000/

En el sistema ya hay cargados varios usuarios  
Todos tienen contraseña: "123123"  
Los usuarios son los siguientes:  
* Usuario administrador --> admin@mail.com  
* Usuarios personal del banco --> bankPersonal1@mail.com y bankPersonal2@mail.com  
* Usuarios clientes --> client1@mail.com y client2@mail.com  
Se pueden crear mas usuarios cliente desde el sign up  
Se pueden crear otros tipos de usuarios desde el panel del usuario administrador  
El usuario administrador no puede eliminarse a sí mismo ni puede modificar datos de los usuarios clientes, a estos últimos solo puede eliminarlos  
