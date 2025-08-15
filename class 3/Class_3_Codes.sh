#!/bin/bash
# Class 3 Codes for Operating Systems

x=12


echo "Hello, World!"

x=$(date)
echo $x



 read x;
 echo "User input is: $x"

 x=22
 y= $((x+3))
 echo "y is: $y"

 x=10
 y= $x+5
echo "y is: $y"

z=2 
if [ $z == 2 ]; then
touch a.txt
echo "File a.txt created in class 3 directory"
else
echo "Condition not met, file not created"
fi

echo "The poet walks alone under the silver moon  
Whispers of dreams follow the poet’s tune  
A river hums softly, knowing the poet’s heart  
Every poet carries worlds they’ll never depart  

Stars listen closely when a traveler speaks  
The wind turns gentle on the dreamer’s cheeks  
In quiet nights, stories take their flight  
And dawn returns, painting the sky with light  
 " >a.txt

grep "poet" a.txt
grep -i "poet" a.txt
grep -v "poet" a.txt
grep -q "poet" a.txt
grep -n "poet" a.txt
grep -c "poet" a.txt 


for file in *.txt
do 
    echo "Scanning: $file"
    if grep -qi -e "virus" -e "worm" "$file"; then
        echo "Infected: $file"
        mkdir -p Quarantine
        mv "$file" Quarantine/
    else
        echo "Clean: $file"
    fi
done





