echo -e "Script para seguir usando kali 1.1.a pero con los repos del Kali Sana \n"

#Borramos remos viejos
rm -Rf /etc/apt/source.list

echo '#update repos'  > /etc/apt/source.list

echo '#Kali Sana' >> /etc/apt/source.list
echo deb http://http.kali.org/kali sana main non-free contrib >> /etc/apt/source.list
echo deb http://security.kali.org./kali-security sana/updates main contrib non-free >> /etc/apt/source.list

echo '#Source repos' >> /etc/apt/source.list
echo deb-src http://http.kali.org/kali sana main non-free contrib >> /etc/apt/source.list
echo deb-src http://security.kaly.org/kali-security sana/updates main contrib non-free >> /etc/apt/source.list


#Limpiamos apt
sudo apt-get clean

#Updateamos repos
sudo apt-get update

#Upgradeamos todas las aps
sudo apt-get upgrade

#Upgradeamos la distro
sudo apt-get dist-upgrade

echo "Listo!"
