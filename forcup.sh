#!/bin/bash
## CREADO POR BRAMICU
opcion=""
ruta=""

43(){
cp Assembly-CSharp-4-3.dll $ruta/Assembly-CSharp.dll && clear && echo 'Ahora puede ejecutar cuphead en 4:3'
}

nativo(){
cp Assembly-CSharp-native.dll $ruta/Assembly-CSharp.dll && clear && echo 'Ahora puede ejecutar cuphead en 16:9'
}

clear
echo '		-------forCup-------'
echo '	En que formato queres ejecutar Cuphead?'
echo ''
echo '		1)4:3	     2)16:9'
echo '			    (Nativo)'
ruta=$(cat RUTA)
read opcion

if grep -x -q "porfavor-incluya-la-ruta-para-la-carpeta-de-cuphead" RUTA; then
	clear
	echo "Porfavor incluya una ruta exacta para modificar el formato de Cuphead."
	exit 1
fi

case $opcion in
1) 43
;;
2) nativo
;;
*) echo 'Porfavor ingrese una opcion valida'
;;
esac

