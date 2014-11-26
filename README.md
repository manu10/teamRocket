## README
## BestNid Sitio de subastas ficticio
Es un proyecto del grupo Team Rocket para la materia Ingenieria de Software de la carrera Ing. en Computacion de la UNLP, con el objetivo de aprender principios y metodologias para el desarrollo y mantenimiento de sistemas software.

##Contribuir con BestNid

Utilizamos el siguiente sofware para desarrollar BestNid:

*ruby 1.9.3p545

*Rails 4.1.5

*Base de Datos: 

*Localmente para desarrollo y test utilizamos SQLite3 y para desarrollo utilizamos PostgreSQL debido a que alojamos 
nuestro sitio Heroku que utiliza la mencionada Base de datos.

*git version 1.8.1.msysgit.1

*Navegador/es web: Google Chrome/Mozilla Firefox/Safari/Opera/Internet Explorer

Una vez que se tiene clonado el repositorio localmente se deben realizar lo siguiente:

Instalar dependencias (gemas):
Desde consola, ejecutar 

bundle install

Configurar la base de datos:
Desde consola Ejecutar:
"rake db:setup rake db:migrate"

Para correr la aplicacion en un servidor local:
Desde consola ejecutar:

"rails server"

La aplicacion estara corriendo en la direcion localhost:3000, a la cual se puede acceder desde cualquier navegador web 
Para probar desde consola funcionalidades de la aplicacion se puede ejecutar:

"rails console"
