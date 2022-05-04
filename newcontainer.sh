#!/bin/bash
echo "INICIANDO CONTAINER NO MODO HOST..."
echo
echo "MODO DE REDE"
read modo
echo "Modo escolhido $modo"
echo
echo "NOME DO CONTAINER"
read nome
echo "NOME DO HOST"
read hname
echo
echo "IMAGEM 1:  cnsoluciones/mikrotik:latest"
echo "NOME DA IMAGEM"
read image
echo "PORTAS EX: -p xxx:xx -p xxx:xx"
read portas
echo "COMAMDO PARA INICIAR O BASH"
read bash
sudo docker run  --name=$nome --hostname=$hname -tid --network $modo $portas $image $bash
echo
echo
echo "CONTAINER INICIADO"
