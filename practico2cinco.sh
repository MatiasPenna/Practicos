#!/bin/bash
# Este script recibe un comando como argumento y muestra información sobre dicho comando.
Error(){
echo "Error. Sintaxis de uso: $0 nombre_del_comando" # Error que mostrará el script cuando no se le den argumentos.
}
if test $# -lt 1 # Si el número de parámetros posicionales o argumentos que se le dan al script es menor que 1, donde "-lt" significa "lower than" y es equivalente a lo que en otros lenguajes se utiliza como "<".
then Error # En caso que no se hayan dado argumentos para el script, manda el mensaje de error que se creó con la función.
else echo "La información o forma de usar el comando que usted busca es la siguiente:"
man $1 # Muestra el manual o forma de usar el comando que el usuario quiere saber. Si el usuario escribió "./8 ps" para ejecutar el script, el parámetro posicional o "$1" será "ps", de modo que el script se ejecutará mostrando el manual de uso del comando "ps", lo que equivale a haber escrito en la consola "man ps" sin haber utilizado este script.
fi
