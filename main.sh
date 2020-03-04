
source function.sh

case $1 in

-lmem)
   funct1 $1 ;;

-lpart)
   funct2 $1 ;;
-lkernel)
   funct3 $1 ;;

-h) 

  funct4 $1 ;;

-s)
funct5 $1 ;;

-af)
funct6  $1;;
-up)
funct7  $1 ;;
-cpuinfo)
   funct8 $1 ;;
-ioports)
   funct9 $1 ;;
-g) menu_graphique ;; 
*) menu_principale ;;


esac






