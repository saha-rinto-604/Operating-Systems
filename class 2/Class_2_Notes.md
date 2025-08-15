# 🚨 Week 2 Linux Basic Commands 

### How To Make A folder/Directory
*******
#### *Using mkdir
```
mkdir folder_name
```


#This script creates a directory named "Assignments" in the current working directory.

#It also prints a message to the console indicating that the directory has been created.

```
mkdir Assignments
#echo "Creating Assignments directory..."
```

#You can also creare a directory with a specific path by passing an argument to the script.

#For example, to create a directory named "MyDirectory", you can run:

```
mkdir -p Assignments/MyDirectory
#echo "Creating MyDirectory inside Assignments directory..."
```

******

### How To Make A New File

#### *Using Touch

```
touch file_path/myfile.txt
```
#create a new file in the Assignments directory

```
touch Assignments/a.txt
```

****
### To Print Current Directory Path

#### *Using pwd command

```
pwd // current directory path
echo "Current directory: $(pwd)" // prints current directory path 
```
### Current Directory To Different Folder

#### *Using cd 

```
cd folder path //according to current folder path
```

#### *To Go To The Parent Folder
```
cd .. // pareny folder of current directory
```

#From current folder "Mydirectory" to move to parent folder path "Operating-Systems" :

```
cd ../../.. // Mydirectory->Assignments->Class 2->Operating-Systems
```

#From current folder "Operating-Systems" to "Mydirectory" folder :

```
cd "class 2"/Assignments/MyDirectory // Operating Systems->class 2-> Assignments->MyDirectory
```

****
### Show The List Of All Files In Current Folder 

#### *Using ls command

#The 'ls' command lists all files and directories in the current folder "class 2".

```
ls
```

#### Output
```
Assignments  Bash_Script.sh  Class_2_Notes.md
```

#The 'ls -l' command is used to display detailed information about files and directories, such as permissions, owner, size, and modification date.

```
ls -l
```

#### Output
```
total 4
drwxrwxrwx 1 rinto-uiu rinto-uiu 512 Aug 14 11:02 Assignments
-rwxrwxrwx 1 rinto-uiu rinto-uiu 675 Aug 14 11:05 Bash_Script.sh
-rwxrwxrwx 1 rinto-uiu rinto-uiu 266 Aug 14 11:18 Class_2_Notes.md
```

#### Breakdown of `ls -l` Permissions

| Symbol         | Meaning                                                                 |
|----------------|------------------------------------------------------------------------|
| d              | Type: d = directory, - = file                                          |
| rwx (1st set)  | Owner permissions: r = read, w = write, x = execute                    |
| rwx (2nd set)  | Group permissions: r = read, w = write, x = execute                    |
| rwx (3rd set)  | Others permissions: r = read, w = write, x = execute                   |

**Example Table:**

| Name                                             | Type      | Owner Perm | Group Perm | Others Perm | Explanation                        |
|--------------------------------------------------|-----------|------------|------------|------------|------------------------------------|
| drwxrwxrwx Assignments                           | Directory | rwx        | rwx        | rwx        | All can read, write, execute       |
| -rwxrwxrwx Bash_Script.sh                        | File      | rwx        | rwx        | rwx        | All can read, write, execute       |
| -rwxrwxrwx Class_2_Notes.md                      | File      | rwx        | rwx        | rwx        | All can read, write, execute       |

- **d** at the start means directory, **-** means file.
- Each **rwx** set is for owner, group, and others.

******

### To Move File

#### *Using mv command

```
mv file_name folder_path
```
#To move b.txt from "MyDirectory" to "Assignments" folder:

```
mv b.txt ../ //moving b.txt to parent folder Assignments
```
******
### To Rename File

#### *Using mv command
```
mv file_name new_name
```

#To rename c.txt to rename.txt :
```
mv c.txt rename.txt
```
******
### To Copy File

#### *Using cp command

```
cp file_name folder_path
```
#To copy b.txt from "Assignments" to "MyDirectory" folder :

```
cp b.txt MyDirectory // full folder_path according to current folder
```

******
### To Overwrite  A File With New Contents

#### *Using echo

```
echo "Overwriting contents">file_name
```
#To overwrite b.txt file with new contents:
```
echo "Overwriting b.txt">b.txt 
```
#Use a single arrow `>` to overwrite the file contents completely.

******
### To Append The Contents Of A File

#### *Using echo

```
echo "Appending contents of a.txt file" >> a.txt
```
#This command appends the text "Appending contents" to the end of a.txt.
#Use a double arrow `>>` to overwrite the file contents completely.

#### *Using cat

```
cat a.txt >> target_file
```
#To append the contents of a.txt to b.txt:
```
cat a.txt >> b.txt
```

******
### To View The Start Or End Contents Of A File

#### *Using head

```
head a.txt
```
#This command displays the first 10 lines of a.txt by default.

#### *Using tail

```
tail a.txt
```
#This command displays the last 10 lines of a.txt by default.

#### *Using Pipelining

```
cat a.txt | head -5
```
#This command shows the first 5 lines of a.txt using a pipeline.

```
cat a.txt | tail -5
```
#This command shows the last 5 lines of a.txt using a pipeline.

#### *Using head for specific lines

```
head -n 3 a.txt
```
#This command displays the first 3 lines of a.txt.

#### *Using tail for specific lines

```
tail -n 2 a.txt
```
#This command displays the last 2 lines of a.txt.

#### *Using pipelining to get specific lines

```
head -n 3 a.txt | tail -n 2
```
#This command displays the 2nd and 3rd lines of a.txt (lines 2 and 3).









