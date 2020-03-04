
source function.sh

case $1 in

-lmem)
   funct1 ;;

-lpart)
   funct2 $1 ;;
-lkernel)
   funct3 $1 ;;

-h) 

  funct4 $1 ;;

-s)
funct5 $1 ;;

*)
funct6 ;;


esac 




