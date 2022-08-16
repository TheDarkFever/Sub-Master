#! usr/bin/bash

#updating the linux distro
echo "Updating linux distro"
sudo apt-get install update && sudo apt-get install upgrade

# For decoration 
sudo apt-get install figlet
sudo gem install lolcat

# Installing go

echo "Checking whether Go lang is installed"

if [[ -z "$GOPATH" ]];then
echo "GO is not installed, would you like to install?"
PS3="Please select an option number : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
                yes)

					echo "Installing Golang"
					wget https://go.dev/dl/go1.19.linux-amd64.tar.gz
					sudo tar -xvf go1.19.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
					echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
					source ~/.bash_profile
					sleep 1
					break
					;;
				no)
					echo "Please install go and rerun this script"
					echo "Aborting installation..."
					exit 1
					;;
	esac	
done
fi


# Install Assetfinder
echo "Installing Assetfinder.."
go get -u github.com/tomnomnom/assetfinder


# Install Subzy
echo "Installing Subzy.."
go get -u -v github.com/lukasikic/subzy
go install -v github.com/lukasikic/subzy@latest


# Install Sub Master
echo "Installing Sub-Master.."
git clone https://github.com/TheDarkFever/Sub-Master.git
cd Sub-Master
chmod +x submaster.sh
sudo mv submaster.sh /usr/bin

