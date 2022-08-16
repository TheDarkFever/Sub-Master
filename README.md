![image](https://user-images.githubusercontent.com/86383084/185003635-ff9de69e-6c23-45df-bcad-cbab171f7534.png)

# Sub-Master
  A Bash script using tomnomnom's assetfinder and lukasikic's subzy tool in automatically enumerating subdomains and finding any subdomain takeovers on the supplied target. This tool helps automating manual tasks and helping in Pentesting or Bug Bounty activities.

# Dependencies
  1. Assetfinder
  2. Subzy

# Installing
  1. Installing Submaster with all the dependencies. (Use this if you do not have dependencies installed in you system)
  ```-> git clone https://github.com/TheDarkFever/Sub-Master.git
     -> cd Sub-Master
     -> chmod +x install.sh
     -> bash install.sh 
  ```
                                                                                Or

   2. Installing SubMaster (Use this if you already have the required dependencies installed)
  ``` -> git clone https://github.com/TheDarkFever/Sub-Master.git
      -> cd Sub-Master
      -> chmod +x submaster.sh
      -> sudo mv submaster.sh /usr/bin (Making program run globally)
  ```
 
# Usage
   Syntax:    ```  bash submaster.sh example.com  ```

# Reference
   https://github.com/tomnomnom/assetfinder AND 
   https://github.com/LukaSikic/subzy
