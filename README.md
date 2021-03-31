# Cron-Tab
```bash
git clone https://github.com/Hassan-Al-Achek/Cron-Tab.git
cd Cron-Tab
chmod +x cronsetup.sh
chmod +x setup.sh
````
## Change Username 
don't forget to change username in cronsetup.sh and executeCommand.sh to your machine username (i.e kali)
then run the following in this order
```bash
./setup.sh
sudo ./cronsetup.sh
```
Add this to the opned file: * * * * *  /home/xhunter/Demo/executeCommand.sh
