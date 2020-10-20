#!/bin/bash
# Este script recibe un argumento y determina si es archivo o directorio.
Error(){
echo "Error. Sintaxis de uso: $0/ archivo | directorio"
}
if test $# -lt 1 # Si el número de parámetros posicionales o argumentos que se le dan al script es menor que 1, donde "-lt" significa "lower than" y es equivalente a lo que en otros lenguajes se utiliza como "<".
then
Error
elif test -d $1 # Si el parámetro posicional "$1" existe y es un directorio.
then
echo "$1 es un directorio."
elif test -f $1 # Si el parámetro posicional "$1" existe y es un archivo regular.
then
echo "$1 es un archivo."
else
echo "$1 no existe."
fi
