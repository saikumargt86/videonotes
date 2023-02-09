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




How to make it an External Service?

“Loadbalancer": ..assigns service an external IP address and so accepts external requests

nodeport is the one which we can access it from outside :must be between 30000-32767











