1. **Update Package Lists (`apt update`)**: Update the local package lists to get information about the latest versions of packages and their dependencies.

   ```bash
   sudo apt update
   ```

2. **Upgrade Installed Packages (`apt upgrade`)**: Upgrade installed packages to their latest versions.

   ```bash
   sudo apt upgrade
   ```

3. **Install Package (`apt install`)**: Install a new package.

   ```bash
   sudo apt install package_name
   ```

4. **Remove Package (`apt remove`)**: Remove a package without removing its configuration files.

   ```bash
   sudo apt remove package_name
   ```

5. **Remove Package and Configuration Files (`apt purge`)**: Remove a package along with its configuration files.

   ```bash
   sudo apt purge package_name
   ```

6. **Search for Package (`apt search`)**: Search for a package by keyword.

   ```bash
   apt search keyword
   ```

7. **Display Package Information (`apt show`)**: Display detailed information about a package.

   ```bash
   apt show package_name
   ```

8. **List Installed Packages (`dpkg -l`)**: List all installed packages on the system.

   ```bash
   dpkg -l
   ```

9. **List Files Installed by Package (`dpkg -L`)**: List files installed by a specific package.

   ```bash
   dpkg -L package_name
   ```

10. **Check for Broken Dependencies (`apt check`)**: Check for broken dependencies in the system.

    ```bash
    apt check
    ```

11. **Clean Package Cache (`apt clean`)**: Delete cached package files from the system.

    ```bash
    sudo apt clean
    ```

12. **Autoremove Unused Packages (`apt autoremove`)**: Remove automatically installed but no longer required packages.

    ```bash
    sudo apt autoremove
    ```

13. **Add Repository (`add-apt-repository`)**: Add a new repository to the system.

    ```bash
    sudo add-apt-repository repository_url
    ```

14. **Remove Repository (`add-apt-repository --remove`)**: Remove an existing repository from the system.

    ```bash
    sudo add-apt-repository --remove repository_url
    ```
