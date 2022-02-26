# Conectar via SSH:
# $ ssh <user>@<publicIPAddress>

sudo apt-get -y update

# Instalar o NGINX:
sudo apt-get -y install nginx

# Exemplo da Microsoft para configurar o uso de xrdp para conexao
# via Remote Desktop e uma interface grafica:
# https://docs.microsoft.com/en-us/azure/virtual-machines/linux/use-remote-desktop

# Instalar a interface do Ubuntu Desktop
sudo apt-get -y install tasksel

# Inclui na selecao Ubuntu Desktop
sudo tasksel
# Apos conclusao efetuar um reboot

# Instalando o xrdp para conexao remota:
sudo apt-get -y install xrdp
sudo systemctl enable xrdp
sudo service xrdp restart

# Em Networking (VM - Portal do Azure) liberar conexoes via RDP
# (porta 3389) - Network Security Group