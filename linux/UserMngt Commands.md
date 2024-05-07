
1. **Add User (`useradd`)**: Create a new user account.

   ```bash
   sudo useradd username
   ```

2. **Add User with Home Directory (`useradd -m`)**: Create a new user account with a home directory.

   ```bash
   sudo useradd -m username
   ```

3. **Set Password for User (`passwd`)**: Set or change the password for a user account.

   ```bash
   sudo passwd username
   ```

4. **Delete User (`userdel`)**: Delete a user account.

   ```bash
   sudo userdel username
   ```

5. **Delete User with Home Directory (`userdel -r`)**: Delete a user account along with its home directory.

   ```bash
   sudo userdel -r username
   ```

6. **Modify User Account (`usermod`)**: Modify user account properties such as username, home directory, or shell.

   ```bash
   sudo usermod -d /new/home/directory username
   ```

7. **Change User ID (`usermod -u`)**: Change the user ID of a user account.

   ```bash
   sudo usermod -u new_uid username
   ```

8. **Change Group ID (`usermod -g`)**: Change the primary group ID of a user account.

   ```bash
   sudo usermod -g new_gid username
   ```

9. **List Users (`cat /etc/passwd`)**: Display a list of user accounts.

   ```bash
   cat /etc/passwd
   ```

10. **List Groups (`cat /etc/group`)**: Display a list of groups.

    ```bash
    cat /etc/group
    ```

11. **Add User to Group (`usermod -aG`)**: Add a user to a supplementary group.

    ```bash
    sudo usermod -aG groupname username
    ```

12. **Remove User from Group (`gpasswd -d`)**: Remove a user from a group.

    ```bash
    sudo gpasswd -d username groupname
    ```

13. **Display User's Groups (`groups`)**: Display the groups a user belongs to.

    ```bash
    groups username
    ```

14. **Change User's Login Shell (`chsh`)**: Change the login shell for a user account.

    ```bash
    sudo chsh -s /path/to/shell username
    ```

15. **Lock User Account (`passwd -l`)**: Lock a user account, preventing login by setting an invalid password.

   ```bash
   sudo passwd -l username
   ```

16. **Unlock User Account (`passwd -u`)**: Unlock a previously locked user account.

   ```bash
   sudo passwd -u username
   ```

17. **Force User to Change Password at Next Login (`chage`)**: Set an expiration date for a user's password, forcing them to change it at next login.

   ```bash
   sudo chage -d 0 username
   ```

18. **Set Password Expiration (`chage`)**: Set the maximum number of days a password is valid for a user account.

   ```bash
   sudo chage -M 90 username
   ```

19. **Display User Account Expiration Information (`chage -l`)**: Display account aging information including password expiration dates.

   ```bash
   sudo chage -l username
   ```

20. **Modify User Account Expiration Date (`chage -E`)**: Set the expiration date for a user account.

   ```bash
   sudo chage -E "YYYY-MM-DD" username
   ```

21. **Add User to sudo Group (`usermod -aG`)**: Grant sudo privileges to a user by adding them to the sudo group.

   ```bash
   sudo usermod -aG sudo username
   ```

22. **Remove User from sudo Group (`gpasswd -d`)**: Remove sudo privileges from a user by removing them from the sudo group.

   ```bash
   sudo gpasswd -d username sudo
   ```

23. **Limit User Logins (`usermod -L`)**: Prevent a user from logging in by locking their account.

   ```bash
   sudo usermod -L username
   ```

24. **Restore User Logins (`usermod -U`)**: Restore login access for a previously locked user account.

    ```bash
    sudo usermod -U username
    ```

25. **Add Comment to User Account (`usermod -c`)**: Add a comment or description to a user account.

    ```bash
    sudo usermod -c "Description" username
    ```

26. **Set User Account Expiry Date (`usermod -e`)**: Set the expiry date for a user account.

    ```bash
    sudo usermod -e "YYYY-MM-DD" username
    ```

27. **Change User's Primary Group (`usermod -g`)**: Change the primary group of a user account.

   ```bash
   sudo usermod -g new_primary_group username
   ```

28. **List User's Login Information (`finger`)**: Display detailed information about a user's login status, including their full name, login shell, and last login time.

   ```bash
   finger username
   ```

29. **Add User to System Without Home Directory (`useradd -M`)**: Create a user account without creating a home directory.

   ```bash
   sudo useradd -M username
   ```

30. **Create User with Specific UID and GID (`useradd -u -o`)**: Create a user account with a specific user ID (UID) and group ID (GID) while allowing duplicate IDs.

   ```bash
   sudo useradd -u uid -g gid -o username
   ```

31. **List Users Logged In (`who`)**: Display a list of users currently logged into the system.

   ```bash
   who
   ```

32. **List Users Logged In with Detailed Information (`w`)**: Display a list of users currently logged into the system along with detailed information such as login time and CPU usage.

   ```bash
   w
   ```

33. **Change User's Password Expiry (`chage -m`)**: Set the minimum number of days before a user can change their password again.

   ```bash
   sudo chage -m min_days username
   ```

34. **Change User's Password Inactivity Expiry (`chage -i`)**: Set the number of days of inactivity after which the user's account will be locked.

   ```bash
   sudo chage -i inactivity_days username
   ```

35. **Change User's Account Expiry Date (`chage -E`)**: Set the account expiry date for a user account.

   ```bash
   sudo chage -E expiry_date username
   ```

36. **Check User's Password Status (`passwd -S`)**: Display the status of a user's password, including password aging information.

    ```bash
    passwd -S username
    ```

2. **passwd**: This command allows users to change their password or sets a new password for a user account.
   ```bash
   sudo passwd username
   ```

3. **usermod**: This command is used to modify user account attributes like username, group membership, home directory, etc.
   ```bash
   sudo usermod -aG groupname username
   ```

4. **userdel**: This command is used to delete a user account from the system.
   ```bash
   sudo userdel username
   ```

5. **groupadd**: This command is used to create a new group in Linux.
   ```bash
   sudo groupadd groupname
   ```

6. **groupmod**: This command is used to modify a group's attributes, such as group name or GID.
   ```bash
   sudo groupmod -n newgroupname oldgroupname
   ```

7. **groupdel**: This command is used to delete a group from the system.
   ```bash
   sudo groupdel groupname
   ```

8. **chown**: This command is used to change the owner and group of files and directories.
   ```bash
   sudo chown username:groupname filename
   ```

9. **chmod**: This command is used to change the permissions of files and directories.
   ```bash
   sudo chmod permissions filename
   ```

10. **su**: This command is used to switch to another user account from the current terminal session.
    ```bash
    su username
    ```

11. **sudo**: This command allows users to execute commands with the security privileges of another user, typically the superuser (root).
    ```bash
    sudo command
    ```

12. **chage**: This command is used to view and change user password expiry information.
    ```bash
    sudo chage -l username
    ```
