1. **View File Contents (`cat`)**: Display the contents of a file.

   ```bash
   cat filename
   ```

2. **Display First Few Lines of a File (`head`)**: Output the first few lines of a file.

   ```bash
   head filename
   ```

3. **Display Last Few Lines of a File (`tail`)**: Output the last few lines of a file.

   ```bash
   tail filename
   ```

4. **Display File Contents with Line Numbers (`cat -n`)**: Display the contents of a file with line numbers.

   ```bash
   cat -n filename
   ```

5. **Count Lines, Words, and Characters in a File (`wc`)**: Count the number of lines, words, and characters in a file.

   ```bash
   wc filename
   ```

6. **Search for Text Patterns in Files (`grep`)**: Search for text patterns in files.

   ```bash
   grep "pattern" filename
   ```

7. **Search for Text Patterns Recursively in Directories (`grep -r`)**: Recursively search for text patterns in directories.

   ```bash
   grep -r "pattern" directory
   ```

8. **Filter Unique Lines (`uniq`)**: Remove duplicate lines from sorted input.

   ```bash
   uniq filename
   ```

9. **Sort Lines of Text (`sort`)**: Sort lines of text alphabetically or numerically.

   ```bash
   sort filename
   ```

10. **Cut Columns from a File (`cut`)**: Extract specific columns from a file.

    ```bash
    cut -d ',' -f 1,2 filename
    ```

11. **Replace Text in Files (`sed`)**: Stream editor for filtering and transforming text.

    ```bash
    sed 's/old_text/new_text/g' filename
    ```

12. **Count Occurrences of Each Line (`uniq -c`)**: Count occurrences of each unique line in a sorted file.

    ```bash
    sort filename | uniq -c
    ```

13. **Merge Files by Line (`paste`)**: Merge lines from multiple files.

    ```bash
    paste file1 file2
    ```

14. **Extract Lines Matching a Pattern (`awk`)**: Pattern scanning and processing language.

    ```bash
    awk '/pattern/' filename
    ```
1. **Extract Specific Columns from a File (`awk`)**: Extract specific columns from a file using `awk`.

   ```bash
   awk '{print $1, $3}' filename
   ```

2. **Calculate Sum/Average of Numbers in a Column (`awk`)**: Calculate the sum or average of numbers in a column using `awk`.

   ```bash
   awk '{sum += $1} END {print "Sum:", sum}' filename
   awk '{sum += $1} END {print "Average:", sum/NR}' filename
   ```

3. **Extract Lines Between Patterns (`sed`)**: Extract lines between two patterns using `sed`.

   ```bash
   sed -n '/start_pattern/,/end_pattern/p' filename
   ```

4. **Remove Lines Matching a Pattern (`sed`)**: Remove lines matching a pattern using `sed`.

   ```bash
   sed '/pattern/d' filename
   ```

5. **Count Unique Values in a Column (`awk` + `sort` + `uniq`)**: Count unique values in a column using a combination of `awk`, `sort`, and `uniq`.

   ```bash
   awk '{print $1}' filename | sort | uniq -c
   ```

6. **Extract Lines Based on Character Position (`cut`)**: Extract lines based on character position using `cut`.

   ```bash
   cut -c 1-10 filename
   ```

7. **Merge Multiple Files Vertically (`paste`)**: Merge multiple files vertically using `paste`.

   ```bash
   paste file1 file2
   ```

8. **Extract Fields Based on Delimiter (`awk`)**: Extract fields based on a delimiter using `awk`.

   ```bash
   awk -F',' '{print $1}' filename
   ```

9. **Reverse Order of Lines (`tac`)**: Reverse the order of lines in a file using `tac`.

   ```bash
   tac filename
   ```

10. **Extract Random Lines from a File (`shuf`)**: Extract random lines from a file using `shuf`.

    ```bash
    shuf -n 5 filename
    ```

11. **Translate Characters (`tr`)**: Translate or delete characters using `tr`.

    ```bash
    tr '[:lower:]' '[:upper:]' < filename
    ```

12. **Extract File Metadata (`stat`)**: Display file metadata such as permissions, size, and modification time using `stat`.

    ```bash
    stat filename
    ```
