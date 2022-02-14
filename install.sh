#!/bin/bash
#Instalador

unzip menu.zip -d /bin


#insertamos el path en los shells
#path
echo "export PATH='$PATH:/bin/menu'" >> ~/.zshrc


echo "export PATH='$PATH:/bin/menu'" >> ~/.bashrc


