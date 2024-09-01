## Go to the AWS console and on the compute tab, seletc launch instance and creater a freetier instance.
+ Create an ssh key with the .pem extension and save the key in a secure directory e.g downloads
+ To connect to the ec2 instance, copy tyhe public IP of the instance

the command to connect is:
+  ssh -i "<keyname.pem>" ec2-user@<PublicIP>
```sh
ssh -i "key.pem" ec2-user@3.84.84.243
```
+ When you first connecvt ot your instance, you are logged it with a default user called ec2-user
+ At this point, there are two users in your system. One is the root user which has super power in the system
+ The system create a second called ec2-user and grants him admin rights with reduced powers
1. **Make Directory (`mkdir`)**: Create a new directory.

```bash
mkdir devops 
```
2. **Change Directory (`cd`)**: Navigate to a specific directory.

```bash
cd /devops
```

3. **List Directory Contents (`ls`)**: Display the contents of the current directory.

```bash
ls
```

4. **Present Working Directory (`pwd`)**: Show the current directory path.

```bash
pwd
```
5. **Remove Directory (`rmdir`)**: Delete an empty directory.

```bash
rmdir devops
```
6. **Create a dir within another (`mkdir`)**: Create dir of files within another.
```sh
mkdir school/class
```
7. **Remove Directory Recursively (`rm -r`)**: Delete a directory and its contents recursively.

```bash
rm -r school
```

7. **Copy (`cp`)**: Copy files or directories into another dir.

```bash
cp source destination_dir
```
8. **Move/Rename (`mv`)**: Move or rename files or directories.

```bash
mv old_file new_file
```
+ when you list a destination dir that exists, it will move
+ when you list a destination dir that doesnt exist, it will rename
9. **Create Symbolic Link (`ln -s`)**: Create a symbolic link to a file or directory.

```bash
ln -s /home/ec2-user/devops/file.txt ~/file.txt
```
+ You can now read the content of this file from anywhere using `~/file.txt` without having to move to the actual location

10. **Find (`find`)**: Search for files or directories.

```bash
find /devops/ -name "file.txt"
```

11. **Recursive Search (`grep -r`)**: Search for text within files recursively.

```bash
grep -r "devops" /devops/file.txt
```
12. **List Hidden Files (`ls -a`)**: Display hidden files (files starting with '.') in addition to regular files.

```bash
ls -a
```

13. **List with Detailed Information (`ls -l`)**: Display file or directory details such as permissions, owner, group, size, and modification date.

   ```bash
   ls -l
   ```

14. **List in Long Format with Human-Readable File Sizes (`ls -lh`)**: Display file or directory details with file sizes in a human-readable format (e.g., KB, MB, GB).

   ```bash
   ls -lh
   ```

15. **List with Hidden Files and Detailed Information (`ls -al`)**: Combination of `-a` and `-l` options to display hidden files with detailed information.

   ```bash
   ls -al
   ```

16. **Go to Home Directory (`cd ~`)**: Navigate to the home directory of the current user.

   ```bash
   cd ~
   ```

17. **Go to Previous Directory (`cd -`)**: Return to the previous working directory.

   ```bash
   cd -
   ```

18. **Go Up One Directory (`cd ..`)**: Move up one directory level.

   ```bash
   cd ..
   ```

19. **Go to Root Directory (`cd /`)**: Navigate to the root directory.

   ```bash
   cd /
   ```

20. **Print Contents of File (`cat`)**: Display the contents of a file.

   ```bash
   cat file.txt
   ```

21. **Print Contents of File with Line Numbers (`cat -n`)**: Display the contents of a file with line numbers.

    ```bash
    cat -n file.txt
    ```

22. **Print Contents of File with Page Navigation (`less`)**: View the contents of a file with the ability to navigate through pages.

    ```bash
    less file.txt
    ```
23. **View First Few Lines of a File (`head`)**: Display the first few lines of a file.

    ```bash
    head filename
    ```
+ To print only the first two lines
   ```bash
   head -n 2 file.txt
   ```
24. **View Last Few Lines of a File (`tail`)**: Display the last few lines of a file.

    ```bash
    tail filename
    ```
25. **List Directory Contents Recursively (`ls -R`)**: Display the contents of the current directory and its subdirectories recursively.

   ```bash
   ls -R
   ```
26. **List Directory Sizes (`du`)**: Display the sizes of directories and their contents.

    ```bash
    du -h devops
    ```

27. **Display Directory Structure (`tree`)**: Display the directory structure in a tree-like format.

    ```bash
    tree
    ```

