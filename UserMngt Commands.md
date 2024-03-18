
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

1. **Lock User Account (`passwd -l`)**: Lock a user account, preventing login by setting an invalid password.

   ```bash
   sudo passwd -l username
   ```

2. **Unlock User Account (`passwd -u`)**: Unlock a previously locked user account.

   ```bash
   sudo passwd -u username
   ```

3. **Force User to Change Password at Next Login (`chage`)**: Set an expiration date for a user's password, forcing them to change it at next login.

   ```bash
   sudo chage -d 0 username
   ```

4. **Set Password Expiration (`chage`)**: Set the maximum number of days a password is valid for a user account.

   ```bash
   sudo chage -M 90 username
   ```

5. **Display User Account Expiration Information (`chage -l`)**: Display account aging information including password expiration dates.

   ```bash
   sudo chage -l username
   ```

6. **Modify User Account Expiration Date (`chage -E`)**: Set the expiration date for a user account.

   ```bash
   sudo chage -E "YYYY-MM-DD" username
   ```

7. **Add User to sudo Group (`usermod -aG`)**: Grant sudo privileges to a user by adding them to the sudo group.

   ```bash
   sudo usermod -aG sudo username
   ```

8. **Remove User from sudo Group (`gpasswd -d`)**: Remove sudo privileges from a user by removing them from the sudo group.

   ```bash
   sudo gpasswd -d username sudo
   ```

9. **Limit User Logins (`usermod -L`)**: Prevent a user from logging in by locking their account.

   ```bash
   sudo usermod -L username
   ```

10. **Restore User Logins (`usermod -U`)**: Restore login access for a previously locked user account.

    ```bash
    sudo usermod -U username
    ```

11. **Add Comment to User Account (`usermod -c`)**: Add a comment or description to a user account.

    ```bash
    sudo usermod -c "Description" username
    ```

12. **Set User Account Expiry Date (`usermod -e`)**: Set the expiry date for a user account.

    ```bash
    sudo usermod -e "YYYY-MM-DD" username
    ```
