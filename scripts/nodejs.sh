echo "Update the system and install necessary packages"; UPDATE_1="$(yum install curl)"; echo "${UPDATE_1}"

#We will install Node.js v6 LTS and npm from the NodeSource repository which depend on the EPEL repository being available.
#To enable the EPEL repository on your CentOS 7 VPS, issue the following command:
echo "Enable the EPEL repository"; RES="$(yum install epel-release)" echo "${RES}"

#Once the EPEL repository is enabled run the following command to add the Node.js v9 LTS repository:
echo "Adding NodeJS v9.x repo"; RES="$(curl --silent --location https://rpm.nodesource.com/setup_9.x | sudo bash -)"; echo "${RES}"

#Once the NodeSource repository is enabled we can proceed with the Node.js v9 LTS and npm installation:
echo "Start NodeJS installation"; RES="$(yum install nodejs)"; echo "${RES}"
