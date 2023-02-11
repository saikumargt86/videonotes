-------------------------------------Linux-------------------------------------
#to get which linux distribution I'm using
cat /etc/os-release


#
#To check a service's status, use the 
systemctl status service-name

#to remove a service
sudo apt-get remove nodejs


#to create a file 
touch
nano filename



#to create a folder 
mkdir folder name

#to view the content
cat

rm -r foldername # to remove a directory
rm  filename # to remove a file

sudo spt-get install apache2
sudo service apache2 start #to start a service
sudo service servicename start

nproc #to check number of proocessors
free #to check memory 

#to restart the vm
sudo shutdown now -r



#gives you the location
which minikube 
#delete if you want to remove minikube
rm pastthelocationfromabovecommand


cat /etc/os-release #os info
#


https://phoenixnap.com/kb/ubuntu-install-kvm
#
echo hello > file1.txt # creates a new file and writes hello in it
echo hello world >> file1.txt #appends the world to the file1

# 
powershell.exe -File script-out-stored-procedures-functions.ps1



#grep

grep is a command-line utility in Unix-like operating systems used to search for a pattern in a file or standard input and display all lines that match.

grep "pattern" filename.txt #This will display all lines in the file filename.txt that contain the word "pattern".

grep -r "pattern" directory_name #This will search for the word "pattern" in all files under the directory_name directory, including subdirectories.

grep -n "pattern" filename.txt #This will display the line numbers of all lines that contain the word "pattern" in the file filename.txt.

grep -i "pattern" filename.txt #This will display all lines in the file filename.txt that contain the word "pattern", ignoring the case of the letters.



to chage the hostname

sudo nano /etc/hostname

sudo nano /etc/hosts


sudo apt-get update 
command updates the package index on your system. This command is used to download the package information from the Internet so that you have an up-to-date list of all the packages that can be installed on your system.

sudo apt-get upgrade 
upgrades the packages on your system that have newer versions available. This command will download and install the new packages and their dependencies.

It is recommended to run sudo apt-get update before running sudo apt-get upgrade to ensure that you have the latest information about the available packages and their dependencies.


#Enabling SSH on the VM
If you need SSH enabled on the system, follow the below steps:

Ensure the /etc/apt/sources.list file has been updated as per above

Run the command: apt-get update 

Run the command: apt-get install openssh-server

Run the command: service sshd start



how to connect to the ec2 instances from one to another using ssh in mobaxterm

ssh -i targetvmsprivetekeyfilename username@targetmachineIP

ssh -i minikube-sai.pem ubuntu@43.204.116.185
#make sure you store the target machine key in the source machine like above minikube-sai.pem file



# Inventory file for connecting to Amazon EC2 instances running Ubuntu

[ubuntu_instances]
# hostname or IP address of the EC2 instance
instance1 ansible_host=xx.xx.xx.xx ansible_user=ubuntu
instance2 ansible_host=xx.xx.xx.xx ansible_user=ubuntu

[ubuntu_instances:vars]
ansible_ssh_private_key_file=path/to/your/private_key.pem
