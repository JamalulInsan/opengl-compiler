                                                                               
#!/bin/bash
#Compiler komputer grafik
clear
echo "*********************************************"
echo "* Compiler Computer Grafik Created by Jamal *"
echo "*        Compiler Grafik Versi 0.3          *"
echo "---------------------------------------------"
Nama_file=$1
if [ -f "$Nama_file" ]
then
out=${Nama_file/%.*/}
echo  -ne "Please wait...\r"
echo  "click exit on top.."
printf "%120s \n"| tr " " -
gcc $Nama_file -lGL -lGLU -lglut -lm -o $out 
./$out 2> /dev/null
if [ $? -eq 0 ]
then 
rm $out
fi
echo "copyright @ 2018 by Jamalul Insan"
echo "Please Use the app wisely .."

else 
Red='\033[0;31m'
echo -e "grafic:$Red cannot access '$Nama_file': No such file or directory\033[0m"
echo "Please Try again..."
fi
