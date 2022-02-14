# script-menu
Una serie de scripts que estoy realizando como proyecto en ASIR para permitir que un usuario sin conocimientos de linux pueda manejarlo. Decir que esta planteado desde el punto de vista de un usuario sin privilegios.

# Importante
Todavia estoy desarrollando el script asi que puede contener fallos, lo ire actualizando a medida que lo vaya desarrollando en clase.

# Requisitos
El script esta desarollado en parrot con algunos comandos que quizas no esten en todas las distros como por ejemplo:
  1. Tree : Permite observar los directorios a modo de arbol
  2. cal : Permite observar el calendario (este es mas raro que no lo tengais)
  3. Zip : Para comprimir/descomprimir archivos

# Instalacion
Para instalarlo es tan sencillo como descargaros el "install.sh" y el "menu.zip", ejecutais el install con permisos de root y este os descomprimira el zip en la carpeta /bin/menu que creara  y añadira a .zshrc y .bashrc una linea al final modificando el PATH para asi poder lanzar el script escribiendo simplemente "menu"
