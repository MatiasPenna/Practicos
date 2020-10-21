!/bin/bash
# Este script recibe por argumento un archivo o directorio y devuelve el tamaño en MB.
Error(){
echo "Error. Sintaxis de uso: $0/ archivo | directorio"
}
if test $# -lt 1 # Si el número de parámetros posicionales o argumentos que se le dan al script es menor que 1, donde "-lt" significa "lower than" y es equivalente a lo que en otros lenguajes se utiliza como "<".
then Error elif test -d $1 # Si el parámetro posicional "$1" existe y es un directorio.
then echo "$1 es un directorio y su tamaño es el siguiente:"
du -hs $1 # El comando "du" estima el espacio que usa un archivo, donde "-hs" son dos opciones activadas, la "h" para que el formato sea "human-readable" (e.g., 1K 234M 2G) y la "s" para "summarize" o dar solamente un total de todo y no ir desplegando el total de cada componente (archivo o directorio) por separado.
elif test -f $1 # Si el parámetro posicional "$1" existe y es un archivo regular. then echo "$1 es un archivo regular y su tamaño es el siguiente:"
du -hs $1 # El comando "du" estima el espacio que usa un archivo, donde "-hs" son dos opciones activadas, la "h" para que el formato sea "human-readable" (e.g., 1K 234M 2G) y la "s" para "summarize" o dar solamente un total de todo y no ir desplegando el total de cada componente (archivo o directorio) por separado.
else echo "$1 no existe."
fi
