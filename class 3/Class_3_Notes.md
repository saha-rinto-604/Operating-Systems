# 🚨 Week 2 Linux Basic Commands 

### Start The Script -Shebang

```
#!/bin/bash # Shebang: tells the system to run this script using the Bash shell
```
#It’s called a shebang **(#!)**.

It tells the OS to use Bash to interpret the script, no matter which shell the user is in.
****

### Run The Script
```
bash file_name //To run the .sh script in terminal
```


#This runs it without needing execute permissions.

#Ensure the file is saved with Unix line endings.
****

### How To Print

```
echo "Hello, World!"
```
Normally prints Hello, World!
****
### How To Declare A Value & Print It

```
x=12 
echo $x
```
#Variables are declared wihtout spaces in both sides of **'='**
#echo $x prints the value of x to the terminal

#### Output
````
12
````
The output is: 12

****

### Mathemetical Expressions

```
x=22 
y=$((x+3))
echo "y = $y"
```
#### Output 
```
y = 25
```
The output is: y = 25

#### Note
```
x=22
y=$x+ 3 #❌
y=$(x+3) #❌
```
#These are the wrong ways to execute the operation. Without **(())** , Bash treats it as a **string** , not a **number**.

****

### User Input

```
read x; //x=22
echo "User input is: $x"
 ```
 #Use **read** to take a user input.
#### Output:
```
User input is: 22
```
The Output is : User input is: 12
****

### Storing Command Output In A Variable

```
today=$(date) //date is a command output
echo $today
```
#### Output
```
Fri Aug 15 21:34:50 +06 2025
```
Output is: Fri Aug 15 21:34:50 +06 2025
#It Prints the current time and date that are stored in **today** variable.
****

### If Else Condition

```
z=2 
if [ $z == 2 ]; then
touch a.txt
echo "File a.txt created in class 3 directory"
else
echo "Condition not met, file not created"
fi
```
#As the condition is right, **a.txt** will be created in the current directory successfully.

#### Note
```
if [--space--$z--space--==--space--2--space--]; then
```
#This is the **correct** **syntax**. Ensure spaces are placed like this otheriwise, **syntax** will be **error**.
****

### To Find A Match From A Script 

Suppoose , **a.txt** file has contents :
```
The poet walks alone under the silver moon  
Whispers of dreams follow the poet’s tune  
A river hums softly, knowing the poet’s heart  
Every poet carries worlds they’ll never depart  

Stars listen closely when a traveler speaks  
The wind turns gentle on the dreamer’s cheeks  
In quiet nights, stories take their flight  
And dawn returns, painting the sky with light  
```


```
grep "poet" a.txt
```
#Using **grep** we can find a specific patterns.

#Syntax is  __grep "pattern" script_name__
#### Output
```
The poet walks alone under the silver moon
Whispers of dreams follow the poet’s tune
A river hums softly, knowing the poet’s heart
Every poet carries worlds they’ll never depart
```
#It will print each line from the script that includes **poet** .
****

### Common Command Flags

| Flag | Description                                      |
|------|-------------------------------------------------|
| -q   | Quit output; suppress normal output            |
| -e   | Specify multiple patterns for matching         |
| -i   | Enable case-insensitive pattern matching       |
| -n   | Display line number along with matching lines  |
| -c   | Count the number of matches                    |

****

### Syntax

```
grep -q "poet" a.txt 
grep -e "poet" -e "stars" a.txt
greap -i "POet" a.txt
grep -ie "Poet" -e "STARS" a.txt
grep -n "poet" a.txt
grep -c "poet" a.txt 
```

### Numeric Loop 

```
for((i=0; i<5; i++))
do
echo $i
done
```
 #### Output

 ```
 0
 1
 2
 3
 4
 ```
 ****
 ### Practice Probelems

 #### In your current directory , if you find "virus" or "worm" written in a file , move that file to Quarantine folder.

 ##### Create files with "virus" & "worm"
 ```
 for(( i=0; i<10 ; i++ ))
do 
touch "$i.txt"
if [ i % 3 == 0 ]; then
echo "virus is a computer malware...." >> "$i.txt"
elif [ i % 5 == 0 ]; then
echo "worm is a computer malware...." >> "$i.txt"
else
echo "OS Lab class...." >> "$i.txt"
fi
done
```
#This will create files from **0.txt** to **9.txt** which includes **"malware"** / **"worm"** words or **not both** .

#### Soluotion

```
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
```
******
























