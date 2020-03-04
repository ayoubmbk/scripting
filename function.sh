
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
