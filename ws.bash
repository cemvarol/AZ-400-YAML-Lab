# Get Login Name
a=$(az ad signed-in-user show --query userPrincipalName)
# Get change Login Name to lower-case
A=$(echo "$a" | sed -e 's/\(.*\)/\L\1/')
B=${A:$(echo `expr index "$A" @`)}
# Create Variables
C=${B:: -24}
D=$(echo "$C"db01)
E=$(echo "$C"wa01)
RG=PartsUnlimited01
L=EastUS
HP=PU-SVC01
user=sysadmin
pass=1q2w3e4r5t6y*
startip=0.0.0.0
endip=255.255.255.255

clear

echo -e "\nPlease take a note of these \nHosting Plan Name is $HP \nResource Group Name is $RG\nServer Name is $E\nWebsite Name is $E \n"
