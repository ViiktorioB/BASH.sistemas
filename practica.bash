#! /bin/bash
echo "################################################"
echo "1- Listar el contenido del directorio"
echo "2- Mostrar directorio actual"
echo "3- Buscar ruta del archivo"
echo "4- Crea un nou directorio temporal para tus datos"
echo "5- Volver a mi directorio principal"
echo "6- Eliminar archivo con antiguedad de 15 dias"
echo "7- Eliminar todo el contenido de la papelera"
echo "################################################"
echo "9- Salir"
echo "################################################"
echo "Que quieres realizar"
read x

while test $x -ne 9; do
case $x in
	1) echo "Listar el contenido del directorio actual"
	ls -lha
	;;
	2) echo "2- Mostrar directorio actual"
	pwd
	;;
	3) echo "Buscar ruta del archivo"
	read archivo
	find / -name $archivo 2>/dev/null
	;;
	4) echo "Crea un nou directorio temporal para tus datos"
	echo "Se va a crear un archivo temporal en /tmp"
	tmpfile=$(mktemp /tmp/datostemporalesXXXX)
	echo "Se ha creado"
	echo ""
	ls -l /tmp/
	;;
	5) echo "Tornar al dir preincipal"
	cd ..
	;;
	6) echo "Elimnar archivo con antiguedad de 15 dias"
	find /home/viktorio/Escritorio/scripdb/* -mtime +15 -type f -exec rm {} \;
	;;
	7) echo "Eliminar todo el contenido de la papelera"
	cd /home/viktorio/.local/share/Trash/
	ls -lF
	echo "Se van a eliminar todos los archivos"
	rm -r *
	echo "Se han eliminado"
	cd /home/viktorio/Escritorio/scripdb
	;;
	*) echo "Sortir del menu"
	esac

echo ""
echo ""	
echo "################################################"
echo "1- Listar el contenido del directorio"
echo "2- Mostrar directorio actual"
echo "3- Buscar ruta del archivo"
echo "4- Crea un nou directorio temporal para tus datos"
echo "5- Volver a mi directorio principal"
echo "6- Eliminar archivo con antiguedad de 15 dias"
echo "7- Eliminar todo el contenido de la papelera"
echo "################################################"
echo "9- Salir"
echo "################################################"
read x
done
