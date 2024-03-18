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
1. **Check for Upgradable Packages (`apt list --upgradable`)**: List upgradable packages available in the repositories.

   ```bash
   apt list --upgradable
   ```

2. **Search for Installed Packages (`apt list --installed`)**: List all installed packages on the system.

   ```bash
   apt list --installed
   ```

3. **Search for a Package (`apt-cache search`)**: Search for a package by keyword.

   ```bash
   apt-cache search keyword
   ```

4. **Display Package Information (`apt-cache show`)**: Display detailed information about a package.

   ```bash
   apt-cache show package_name
   ```

5. **Add External Repository (`echo` + `tee` + `apt-key` + `apt-add-repository`)**: Add an external repository to the system.

   ```bash
   echo "deb [arch=amd64] repository_url distribution main" | sudo tee /etc/apt/sources.list.d/repository_name.list
   wget -O - repository_key_url | sudo apt-key add -
   sudo apt-get update
   ```

6. **Remove External Repository (`rm`)**: Remove an external repository from the system.

   ```bash
   sudo rm /etc/apt/sources.list.d/repository_name.list
   sudo apt-get update
   ```

7. **Fix Broken Dependencies (`apt-get -f install`)**: Fix broken dependencies by installing missing dependencies.

   ```bash
   sudo apt-get -f install
   ```

8. **Downgrade a Package (`apt install` with package version)**: Install a specific version of a package to downgrade it.

   ```bash
   sudo apt install package_name=version
   ```

9. **Pin a Package (`apt-mark hold`)**: Prevent a package from being upgraded.

   ```bash
   sudo apt-mark hold package_name
   ```

10. **Unpin a Package (`apt-mark unhold`)**: Allow a package to be upgraded again after pinning it.

    ```bash
    sudo apt-mark unhold package_name
    ```

11. **List Dependencies of a Package (`apt-rdepends`)**: List dependencies of a package.

    ```bash
    apt-rdepends package_name
    ```

12. **Download Package Without Installing (`apt download`)**: Download a package without installing it.

    ```bash
    apt download package_name
    ```
