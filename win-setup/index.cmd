# install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# packages
choco install googlechrome -y
choco install vscode -y
choco install firefox --version 109.0.1 -y
choco install python3 --version 3.11.0 -y
choco install zoom --version 5.13.5.12053 -y
choco install git.install --version 2.39.1 -y
choco install teamviewer --version 15.38.3 -y
choco install putty.install --version 0.78 -y
choco install spotify --version 1.2.3.1115 -y
choco install 1password --version 7.9.832 -y
choco install nvm --version 1.1.9 -y
choco install mysql.workbench --version 8.0.31 -y
choco install slack --version 4.29.149 -y
choco install notion --version 2.0.39 -y
choco install postman --version 10.7.0 -y
choco install telegram --version 4.5.3 -y
choco install whatsapp --version 2.2304.7 -y
choco install kindle --version 1.39.65383 -y
choco install awscli --version 2.9.19 -y
choco install yarn -y
choco install terraform -y
choco install docker-desktop
