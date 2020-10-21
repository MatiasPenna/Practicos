#!/bin/bash
# Este script sirve para que al entrar en la consola tty1 con un usuario específico que creé, yo reciba un saludo personalizado con mi nombre completo.
if [ "$(whoami)" = 'jaime' ]
then
echo "Bienvenido Jaime Oswaldo Montoya Guzman, esta es su cuenta de usuario." >> /dev/tty1 # "/dev/tty1" es para que la impresión se realice en la consola 1 (tty1) y no en ninguna otra consola."
else
echo "Usted no es Jaime Oswaldo Montoya Guzmán." >> /dev/tty1 # "/dev/tty1" es para que la impresión se realice en la consola 1 (tty1) y no en ninguna otra consola."
fi
