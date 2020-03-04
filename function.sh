menu_principale()
{
x=4
while (($x!=0))
do
echo "               B I E N V E N U E                    "
echo "----------------------------------------------------"
echo "1-Menu projet: "
echo "2-Extras : "
echo "3-Menu graphique : "
echo "4-sauvegarder : "
echo "5-help : "
echo "0-Quitter !"
echo "----------------------------------------------------"
echo "entrez votre choix : "
read choix
case $choix in
1)
   menu_projet ;;
2)
   extras ;;
3)
   menu_graphique ;;
4) 
   funct5	 ;;
5)
   funct4 ;;
0)
x=0 ;;
esac 
done
}
menu_graphique()
{
#!/bin/bash


yad  --text="Choose a commande" \
--button=gtk-cancel:1 \
--button="memoire":2 \
--button="disque dur":3 \
--button="kernel":4 \
--button="help":5 \
--button="sauvegarder":6 \
--button="afficher":7 \
--button="date de lancement":8 \
--button="Processeur ":9 \
--button="ports utilisés  ":10 

foo=$?

if [ $foo -eq 1 ]
then
	exit 0
elif [ $foo -eq 2 ]
then
	cat /proc/meminfo > memoire.txt
	yad --fullscreen --text-info --filename="memoire.txt"
elif [ $foo -eq 3 ]
then 
	cat /proc/partitions > dd.txt 
	yad  --fullscreen --text-info --filename="dd.txt" 

elif [ $foo -eq 4 ]
then 
	cat /proc/version > kernel.txt
	yad --fullscreen --text-info --filename="kernel.txt" 

elif [[ $foo -eq 5 ]]
then
	yad --fullscreen --text-info --filename="help.txt"
elif [[ $foo -eq 6 ]]
then
	head -3 /proc/meminfo > s.txt
        cat /proc/partitions >> s.txt
        cat /proc/version >> s.txt
elif [[ $foo -eq 7 ]]
then
	yad --fullscreen --text-info --filename="s.txt"
elif [[ $foo -eq 8 ]]
then
uptime -p >date.txt
nano date.txt
	yad --fullscreen --text-info --filename="date.txt"
elif [ $foo -eq 9 ]
then
	cat /proc/cpuinfo >cpu.txt
	yad --fullscreen --text-info --filename="cpu.txt"
elif [ $foo -eq 10 ]
then
	cat /proc/ioports >ports.txt
	yad --fullscreen --text-info --filename="ports.txt"




fi
}
menu_projet()
{
echo "              M E N U * P R O J E T                    "
echo "----------------------------------------------------"
echo "1-informations sur la memoire: "
echo "2-partitions du disque dur : "
echo "3-version du kernel : "
echo "4-afficher les informations les plus importantes : "
echo "----------------------------------------------------"
echo "entrez votre choix : "
read choix
case $choix in
1)
   cat /proc/meminfo  ;;
2)
   cat /proc/partitions   ;;
3)
   cat /proc/version ;;
4)
  cat s.txt ;;
esac
}
extras()
{
echo "              M E N U * E X T R A S                   "
echo "----------------------------------------------------"
echo "1-informations sur la cpu: "
echo "2-input/output : "
echo "3-temps passé depuit le dernier demarrage : "
 
echo "----------------------------------------------------"
echo "entrez votre choix : "
read choix
case $choix in
1)
   cat /proc/cpuinfo   ;;
2)
   cat /proc/ioports   ;;
3)
   cat /proc/uptime ;;
 
esac
}
funct1 ()
{
cat /proc/meminfo 
}

funct2 ()
{
cat /proc/partitions
}

funct3 ()
{
cat /proc/version

}

funct4 ()
{
   cat help.txt
}

funct5 ()
{
        head -3 /proc/meminfo > s.txt
        cat /proc/partitions >> s.txt
        cat /proc/version >> s.txt
}

funct6 ()
{
 cat s.txt
}
funct7 ()
{
cat /proc/uptime

}

funct8 ()
{
cat /proc/cpuinfo 

}
funct9 ()
{
cat /proc/ioports

}
