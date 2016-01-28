#!/bin/bash
# A Linux Script to add a new user to the system. Via using the command line By Matthew Utin.
#---------------------------------------------------------------------------->>*START*<<--------------------------------------------------------------------//
<<COMMENT1
View code in Kate, within linux.
To Run, You must run as root. e.g. cd /home/user/Desktop#
sudo chmod +x matts_addusers_script.sh

						    *///////////////////////@
						    |[By: Matthew Utin]     |
						    |[Date: Wed Feb 12 2014]|
						    |[Version: 1.0]         |
						    @///////////////////////*

References Below:
+-========-+

[1]. Linux Shell script to add a user with a password to the system - nixCraft. 2014. Linux Shell script to add a user with a password to the system - nixCraft. [ONLINE] Available at: http://www.cyberciti.biz/tips/howto-write-shell-script-to-add-user.html. [Accessed online 13 February 2014].

[2]. How to remove a user from a group? - Ask Ubuntu. 2014. How to remove a user from a group? - Ask Ubuntu. [ONLINE] Available at: http://askubuntu.com/questions/80115/how-to-remove-a-user-from-a-group. [Accessed online 13 February 2014].

[3]. Bash Shell Programming in Linux . 2014. Bash Shell Programming in Linux . [ONLINE] Available at: http://www.arachnoid.com/linux/shell_programming.html. [Accessed online 13 February 2014].

[4].Robbins, A R, 2010. bash Pocket Reference, Help for Power Users and sys Admins. 1st ed. USA: O'Reilly Media Inc.. [Book].

[5].Negus, C.N, 2012. Linux Bible. 5th ed. USA: John Wiley & Sons, Inc.. [Book].

Licence:
+-========-+

Licence: LGPL, (c) Matthew Utin 2014-2
You can use this code in any tool but you must credit it. There are going to be Detailed comments provided for use in my tool.

COMMENT1
echo "╔═══════════════════════════════════════════════════╗" # The title of my linux tool
echo "█ Matt's System Administrative Tools For Linux V1.0 █"
echo "╚═══════════════════════════════════════════════════╝"
echo ${tmp-`date`} # Shows date and time.
PS3='Hit [Enter] to re-show all options, Please enter your choice: ' # This is the start of my bash select code to give the tool it's menus. 
options=("Create a regular user." "Create a root/admin user." "Add a usergroup to a user." "Create a new usergroup." "Show the usergroups that a user is linked to." "Show all usergroups on the system." "Show all users on the system." "About." "Remove a usergroup from a user." "Remove/delete usergroup from system." "Remove User and home directory or just the user account." "Quit!") #This part of the code is the options that are used to link the case select code-
# to the diffrent parts of the tool.
select opt in "${options[@]}" # selects the diffrent options that are in the code below and exacutes them, in order. So if the user hit the key bored key[1] it would open and exacute option 1, in my tool that would be the 1) Create a regular user. option.
do
    case $opt in
"Create a regular user.") # 1) option.
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better to read the information.
if [ $(id -u) -eq 0 ]; then
echo "╔══════════════════════════════════════════════════════════════════════╗"
echo "█ Adding a new (regular user) to the system step 1 enter the username. █" # The title of command/information.
echo "╚══════════════════════════════════════════════════════════════════════╝"
	read -p "Enter Username : " matts_code_username # This line of code is used to tell the user to type in some information. This will then be liked by a bash variable. e.g. $test for example.
echo "╔════════════════════════════╗"
echo "█ Step 2 enter the Password. █" # The title of command/info.
echo "╚════════════════════════════╝"
	read -s -p "Enter Password : " matts_code_password 
	egrep "^$matts_code_username" /etc/passwd >/dev/null # modifies the file and looks up usernames to see if they are there.
	if [ $? -eq 0 ]; then
		echo "$matts_code_username exists!" # If the username is there this message will display.
		exit 1 # And exit the loop, it will also return to the case loop to pick an option.
	else
		matts_code_pass=$(perl -e 'print crypt($ARGV[0], "matts_code_password")' $matts_code_password) # This is some perl script that will encrypt the users password.
		useradd -m -p $matts_code_pass $matts_code_username # After this I then add the user but using the useradd command.
		[ $? -eq 0 ] && echo "The new User has been added to system!" || echo "Sorry the system has failed to add the user!" #if the script works he first echo will show if not the other will show.
	fi
else
	echo "Only the root user may add a new user to this system!" #If error starting then script will show this message and exit.
	exit 2
fi
  ;;
"Create a root/admin user.") # 2) option.
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
if [ $(id -u) -eq 0 ]; then
echo "╔═════════════════════════════════════════════════════════════════════════╗"
echo "█ Adding a new (root/admin user) to the system step 1 enter the username. █" # The title of command/info.
echo "╚═════════════════════════════════════════════════════════════════════════╝"
	read -p "Enter Username : " matts_code_username # This line of code is used to tell the user to type in some information. This will then be liked by a bash variable. e.g. $test for example.
echo "╔════════════════════════════╗"
echo "█ Step 2 enter the Password. █" # The title of command/info.
echo "╚════════════════════════════╝"
	read -s -p "Enter Password : " matts_code_password
	egrep "^$matts_code_username" /etc/passwd >/dev/null # modifies the file and looks up usernames to see if they are there.
	if [ $? -eq 0 ]; then
		echo "$matts_code_username exists!" # If the username is there this message will display.
		exit 1 # And exit the loop, it will also return to the case loop to pick an option.
	else
		matts_code_pass=$(perl -e 'print crypt($ARGV[0], "matts_code_password")' $matts_code_password)
		useradd -m -p $matts_code_pass $matts_code_username -G admin,root # (Adds new user as admin and root in the usergroups.)
		[ $? -eq 0 ] && echo "The new User has been added to system!" || echo "Sorry the system has failed to add the user!" #if the script works he first echo will show if not the other will show.
	fi
else
	echo "Only the root user may add a new user to this system!" #If error starting then script will show this message and exit.
	exit 2
fi
  ;;
"Add a usergroup to a user.") # 3) option.
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
read -p "The user group you want to add to the user: " group
read -p "Enter the user: " username
usermod -a -G $group $username #code to add a usergroup to the user.
  ;;
"Create a new usergroup.") # 4) option.
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
read -p "Enter the group you would like to create: " newgroup
groupadd $newgroup #creates new usergroups.
  ;;
"Show the usergroups that a user is linked to.") # 5) option.
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
read -p "Enter the username: " groups # shows the user groups that the user is in.
groups $groups
  ;;
"Show all usergroups on the system.") # 6) option.
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
cat /etc/group |cut -d: -f1 # Using the cat command to look up usergroups in the /etc/group file.
  ;;
"Show all users on the system.") # 7) option.
clear
cat /etc/passwd # Using the cat command to see all users on the system as it shows the output of the file.
  ;;
"About.") # 8) option.
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
echo ${tmp-`date`} # shows data and time.
echo "*/---------------------------------------------------/"
echo "    ###    ########   #######  ##     ## ########     "
echo "   ## ##   ##     ## ##     ## ##     ##    ##        " # About title.
echo "  ##   ##  ##     ## ##     ## ##     ##    ##        "
echo " ##     ## ########  ##     ## ##     ##    ##        "
echo " ######### ##     ## ##     ## ##     ##    ##        "
echo " ##     ## ##     ## ##     ## ##     ##    ##    ### "
echo " ##     ## ########   #######   #######     ##    ### "
echo "/---------------------------------------------------/*"
echo " "
echo "------------->>[By: Matthew Utin]" # Information.
echo "------------->>[Date: Wed Feb 12 2014]"
echo "------------->>[Version: 1.0]"
echo " "
echo "╔═══════════════════════════════════════════════════════════════════════╗"
echo "█ Licence: LGPL, (c) Matthew Utin 2014-2                                █" # Information.
echo "█ You can use this code in any tool but you must credit it.             █"
echo "█ There are going to be Detailed comments provided for use in this tool.█"
echo "╚═══════════════════════════════════════════════════════════════════════╝"
echo " "
  ;;
"Remove a usergroup from a user.") # 9) option.
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
read -p "Enter the username: " username_matts_code
read -p "Enter the group you would like to remove from that user [e.g. root]: " group_matts_code
gpasswd -d $username_matts_code $group_matts_code #Removes a usergroup from a system user.
  ;;
"Remove/delete usergroup from system.") # 10) option.
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
read -p "Enter the usergroup name you would like to remove from the system: " matts_usergroup_del
groupdel $matts_usergroup_del # deletes a usergroup from the system.
  ;;
"Remove User and home directory or just the user account.") # 11) option.
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
echo " "
echo "If you don't want to make any changes or you have hit the wrong option." # The title of command/information.
echo "Hit [Enter] to go back to the menu."
echo " "
read -p "Hit [Y]yes if you want to remove the User and home directory or Hit [N]no if you want to just remove the user. $foo? [Y/N]" answer #using a yes or no script.
if [[ $answer = y ]] ; then # if y then the below code is exacuted.
read -p "Enter the user you want to remove from the system: " users
userdel -r $users # removes the user and directory.
elif [[ $answer = n ]] ; then # if n then the below code is exacuted.
read -p "Enter the user you want to remove from the system: " user
userdel $user # Just removes the user.
fi # if [Enter] key is hit then back to menu.
  ;;
"Quit!") # 12) option.
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
            break # Exit code.
            ;;
        *) echo invalid option;;
    esac
done #----------------------------------------------------------------------->>!END!<<--------------------------------------------------------------------//
