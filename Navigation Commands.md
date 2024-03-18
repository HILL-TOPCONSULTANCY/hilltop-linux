
1. **Change Directory (`cd`)**: Navigate to a specific directory.

   ```bash
   cd /path/to/directory
   ```

2. **List Directory Contents (`ls`)**: Display the contents of the current directory.

   ```bash
   ls
   ```

3. **Present Working Directory (`pwd`)**: Show the current directory path.

   ```bash
   pwd
   ```

4. **Make Directory (`mkdir`)**: Create a new directory.

   ```bash
   mkdir new_directory
   ```

5. **Remove Directory (`rmdir`)**: Delete an empty directory.

   ```bash
   rmdir directory_name
   ```

6. **Remove Directory Recursively (`rm -r`)**: Delete a directory and its contents recursively.

   ```bash
   rm -r directory_name
   ```

7. **Copy (`cp`)**: Copy files or directories.

   ```bash
   cp source_file destination_file
   ```

8. **Move/Rename (`mv`)**: Move or rename files or directories.

   ```bash
   mv old_file new_file
   ```

9. **Create Symbolic Link (`ln -s`)**: Create a symbolic link to a file or directory.

   ```bash
   ln -s target_file link_name
   ```

10. **Change File or Directory Permissions (`chmod`)**: Modify file or directory permissions.

    ```bash
    chmod options permissions filename
    ```

11. **Change File or Directory Ownership (`chown`)**: Change the owner and group of a file or directory.

    ```bash
    chown owner:group filename
    ```

12. **Find (`find`)**: Search for files or directories.

    ```bash
    find /path/to/search -name "filename"
    ```

13. **Recursive Search (`grep -r`)**: Search for text within files recursively.

    ```bash
    grep -r "search_term" /path/to/search
    ```

14. **Zip/Compress (`tar -czvf`)**: Create a compressed archive.

    ```bash
    tar -czvf archive_name.tar.gz directory_to_compress
    ```

15. **Unzip/Decompress (`tar -xzvf`)**: Extract files from a compressed archive.

    ```bash
    tar -xzvf archive_name.tar.gz
    ```

16. **List Hidden Files (`ls -a`)**: Display hidden files (files starting with '.') in addition to regular files.

   ```bash
   ls -a
   ```

17. **List with Detailed Information (`ls -l`)**: Display file or directory details such as permissions, owner, group, size, and modification date.

   ```bash
   ls -l
   ```

18. **List in Long Format with Human-Readable File Sizes (`ls -lh`)**: Display file or directory details with file sizes in a human-readable format (e.g., KB, MB, GB).

   ```bash
   ls -lh
   ```

19. **List with Hidden Files and Detailed Information (`ls -al`)**: Combination of `-a` and `-l` options to display hidden files with detailed information.

   ```bash
   ls -al
   ```

20. **Go to Home Directory (`cd ~`)**: Navigate to the home directory of the current user.

   ```bash
   cd ~
   ```

21. **Go to Previous Directory (`cd -`)**: Return to the previous working directory.

   ```bash
   cd -
   ```

22. **Go Up One Directory (`cd ..`)**: Move up one directory level.

   ```bash
   cd ..
   ```

23. **Go to Root Directory (`cd /`)**: Navigate to the root directory.

   ```bash
   cd /
   ```

24. **Print Contents of File (`cat`)**: Display the contents of a file.

   ```bash
   cat filename
   ```

25. **Print Contents of File with Line Numbers (`cat -n`)**: Display the contents of a file with line numbers.

    ```bash
    cat -n filename
    ```

26. **Print Contents of File with Page Navigation (`less`)**: View the contents of a file with the ability to navigate through pages.

    ```bash
    less filename
    ```

27. **View First Few Lines of a File (`head`)**: Display the first few lines of a file.

    ```bash
    head filename
    ```

28. **View Last Few Lines of a File (`tail`)**: Display the last few lines of a file.

    ```bash
    tail filename
    ```

29. **Navigate Forward and Backward in Directory Stack (`pushd` and `popd`)**: Manipulate the directory stack to navigate between directories.

    ```bash
    pushd /path/to/directory
    popd
    ```

1. **Change to Previous Directory (`cd -`)**: Switch to the previous working directory.

   ```bash
   cd -
   ```

2. **Change to Nth Previous Directory (`cd ~N`)**: Go back to the Nth previous directory in the directory stack.

   ```bash
   cd ~N
   ```

3. **Change to Parent Directory (`cd ..`)**: Move up one directory level.

   ```bash
   cd ..
   ```

4. **Change to Root Directory (`cd /`)**: Navigate to the root directory.

   ```bash
   cd /
   ```

5. **Change to Home Directory (`cd` or `cd ~`)**: Move to the home directory of the current user.

   ```bash
   cd
   ```

6. **Change to Previous Working Directory (`cd -`)**: Return to the previous working directory.

   ```bash
   cd -
   ```

7. **Create Nested Directories (`mkdir -p`)**: Create directories and any necessary parent directories recursively.

   ```bash
   mkdir -p directory/subdirectory
   ```

8. **Remove Directory and Its Contents Recursively (`rm -r`)**: Delete a directory and its contents.

   ```bash
   rm -r directory_name
   ```

9. **List Directory Contents Recursively (`ls -R`)**: Display the contents of the current directory and its subdirectories recursively.

   ```bash
   ls -R
   ```

10. **Find Files by Name (`find`)**: Search for files or directories by name.

    ```bash
    find /path/to/search -name "filename"
    ```

11. **Find Files by Type (`find`)**: Search for files by type (e.g., directories, regular files, symbolic links).

    ```bash
    find /path/to/search -type f  # for regular files
    find /path/to/search -type d  # for directories
    find /path/to/search -type l  # for symbolic links
    ```

12. **Find Files Modified Within a Time Frame (`find`)**: Search for files modified within a specified time frame.

    ```bash
    find /path/to/search -mtime -5  # files modified within the last 5 days
    find /path/to/search -mtime +5  # files modified more than 5 days ago
    ```

13. **List Directory Sizes (`du`)**: Display the sizes of directories and their contents.

    ```bash
    du -h directory_name
    ```

14. **Display Directory Structure (`tree`)**: Display the directory structure in a tree-like format.

    ```bash
    tree
    ```

