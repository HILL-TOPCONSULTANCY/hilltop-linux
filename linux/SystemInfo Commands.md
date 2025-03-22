### Updated System Information Commands

---

#### **System Overview**
1. **Display System Information (`uname`)**  
   Display kernel and system information (kernel name, version, machine hardware, etc.).

   ```bash
   uname -a
   ```

2. **Display System Information (`hostnamectl`)**  
   Show system hostname, operating system, kernel version, architecture, and more.

   ```bash
   hostnamectl
   ```

3. **Display Distribution Information (`lsb_release`)**  
   Display Linux distribution-specific information (e.g., Ubuntu, Debian).

   ```bash
   lsb_release -a
   ```

4. **Display Comprehensive System Information (`inxi`)**  
   Show detailed hardware, CPU, memory, disk, and network information.

   ```bash
   inxi -Fx
   ```

5. **Display System Information with ASCII Art (`neofetch`)**  
   Display system information along with a colorful ASCII art logo.

   ```bash
   neofetch
   ```

---

#### **CPU Information**
6. **Display CPU Details (`lscpu`)**  
   Show CPU architecture, cores, threads, speed, and cache information.

   ```bash
   lscpu
   ```

7. **Display Detailed CPU Information (`cat /proc/cpuinfo`)**  
   View detailed CPU information from the `/proc/cpuinfo` file.

   ```bash
   cat /proc/cpuinfo
   ```

8. **Display CPU Temperature (`sensors`)**  
   Show CPU temperature and other hardware sensor data.

   ```bash
   sensors
   ```

---

#### **Memory Information**
9. **Display Memory Usage (`free`)**  
   Show memory usage (total, used, free, and cached memory).

   ```bash
   free -h
   ```

10. **Display Detailed Memory Information (`cat /proc/meminfo`)**  
    View detailed memory statistics from the `/proc/meminfo` file.

    ```bash
    cat /proc/meminfo
    ```

---

#### **Disk and Storage Information**
11. **Display Disk Usage (`df`)**  
    Show disk space usage for all mounted filesystems.

    ```bash
    df -h
    ```

12. **Display Disk Partition Information (`parted`)**  
    View details about disk partitions.

    ```bash
    parted -l
    ```

13. **Display Block Device Information (`lsblk`)**  
    List information about block devices (disks and partitions).

    ```bash
    lsblk
    ```

14. **Display File System Information (`stat`)**  
    Show file system details for a specific file or directory.

    ```bash
    stat filename
    ```

---

#### **Network Information**
15. **Display Network Interfaces (`ifconfig`)**  
    Show IP addresses, MAC addresses, and network configuration.

    ```bash
    ifconfig
    ```

16. **Display Detailed Network Information (`ip`)**  
    View detailed network interface information, including IP addresses and routing tables.

    ```bash
    ip addr show
    ```

17. **Display Network Statistics (`netstat`)**  
    Show network statistics, active connections, and routing tables.

    ```bash
    netstat -a
    ```

18. **Display Open Ports (`ss`)**  
    List open ports and sockets.

    ```bash
    ss -tuln
    ```

---

#### **Process Information**
19. **Display Running Processes (`ps`)**  
    List all running processes.

    ```bash
    ps aux
    ```

20. **Display Real-Time System Resource Usage (`top`)**  
    Show real-time CPU, memory, and process usage.

    ```bash
    top
    ```

21. **Display Process Tree (`pstree`)**  
    Show a tree diagram of running processes.

    ```bash
    pstree
    ```

22. **Display Process IDs by Name (`pgrep`)**  
    Find process IDs by process name.

    ```bash
    pgrep process_name
    ```

23. **Display CPU Usage by Process (`pidstat`)**  
    Show CPU usage statistics for processes.

    ```bash
    pidstat -u
    ```

24. **Display Memory Usage by Process (`pidstat`)**  
    Show memory usage statistics for processes.

    ```bash
    pidstat -r
    ```

25. **Display I/O Usage by Process (`pidstat`)**  
    Show I/O statistics for processes.

    ```bash
    pidstat -d
    ```

---

#### **Hardware Information**
26. **Display USB Devices (`lsusb`)**  
    List all connected USB devices.

    ```bash
    lsusb
    ```

27. **Display PCI Devices (`lspci`)**  
    List all connected PCI devices.

    ```bash
    lspci
    ```

28. **Display Detailed Hardware Information (`lshw`)**  
    Show comprehensive hardware details.

    ```bash
    sudo lshw
    ```

29. **Display Hardware Information (`hwinfo`)**  
    Show detailed hardware information (CPU, memory, disk, network, etc.).

    ```bash
    hwinfo
    ```

---

#### **System Logs and Boot Information**
30. **Display Bootup Messages (`dmesg`)**  
    Show kernel ring buffer messages, including bootup logs.

    ```bash
    dmesg
    ```

31. **Display System Logs (`journalctl`)**  
    View system logs using `journalctl`.

    ```bash
    journalctl -xe
    ```

---

#### **User and Session Information**
32. **Display Logged-In Users (`who`)**  
    Show currently logged-in users.

    ```bash
    who
    ```

33. **Display System Uptime (`uptime`)**  
    Show system uptime and load averages.

    ```bash
    uptime
    ```

---

#### **Advanced System Monitoring**
34. **Display System Resource Usage (`htop`)**  
    An interactive process viewer (install with `sudo apt install htop`).

    ```bash
    htop
    ```

35. **Display I/O Statistics (`iostat`)**  
    Show I/O statistics for disks and partitions.

    ```bash
    iostat
    ```

36. **Display Network Traffic (`iftop`)**  
    Monitor network traffic in real-time (install with `sudo apt install iftop`).

    ```bash
    sudo iftop
    ```

---
