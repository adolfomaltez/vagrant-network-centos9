#!/bin/bash
# Script de provisionamiento para centos9 networking VMs

# Instalar frr
sudo yum -y install frr

# Habilitar ripd en frr
sudo sed -i -e 's/ripd=no/ripd=yes/g' /etc/frr/daemons 

# Iniciar demonio frr
sudo systemctl enable frr
sudo systemctl start frr
