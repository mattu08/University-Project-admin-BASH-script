#!/bin/bash
# A Linux Script to add a new user to the system. Via using the command line By Matthew Utin.
#---------------------------------------------------------------------------->>*START*<<--------------------------------------------------------------------//
<<COMMENT1
View code in Kate, within linux, (Ubuntu).
To Run, You must run as root. e.g. sudo su <Password>. You will then need to change the directory. e.g. cd </home/user/Desktop>
sudo chmod +x matts_addusers_script.sh
Then use --> ./matts_addusers_script_v2.0.sh <-- to run the script.
End result, you should see something like this: root@user-Pc-05:/home/user/Desktop#./matts_addusers_script_v2.0.sh

For best results when operating the script. Run in: GNOME Terminal, tested on GNOME Terminal version 3.6.2.

						    *///////////////////////@
						    |[By: Matthew Utin]     |
						    |[Date: Sun Oct 26 2014]|
						    |[Version: 2.0]         |
						    @///////////////////////*

References Below:
+-========-+

[1]. Linux Shell script to add a user with a password to the system - nixCraft. 2014. Linux Shell script to add a user with a password to the system - nixCraft. [ONLINE] Available at: http://www.cyberciti.biz/tips/howto-write-shell-script-to-add-user.html. [Accessed online 13 February 2014].

[2]. How to remove a user from a group? - Ask Ubuntu. 2014. How to remove a user from a group? - Ask Ubuntu. [ONLINE] Available at: http://askubuntu.com/questions/80115/how-to-remove-a-user-from-a-group. [Accessed online 13 February 2014].

[3]. Bash Shell Programming in Linux . 2014. Bash Shell Programming in Linux . [ONLINE] Available at: http://www.arachnoid.com/linux/shell_programming.html. [Accessed online 13 February 2014].

[4]. Robbins, A R, 2010. bash Pocket Reference, Help for Power Users and sys Admins. 1st ed. USA: O'Reilly Media Inc.. [Book].

[5]. Negus, C.N, 2012. Linux Bible. 5th ed. USA: John Wiley & Sons, Inc.. [Book].

[6]. How To Add Users To Linux OS From A Text file | HowtoForge - Linux Howtos and Tutorials. 2014. How To Add Users To Linux OS From A Text file | HowtoForge - Linux Howtos and Tutorials. [ONLINE] Available at: http://www.howtoforge.com/how-to-add-linux-system-users-from-a-text-file. [Accessed 27 September 2014].

[7]. Bash: Using Colors. 2014. Bash: Using Colors. [ONLINE] Available at: http://www.csc.uvic.ca/~sae/seng265/fall04/tips/s265s047-tips/bash-using-colors.html. [Accessed 27 September 2014].

[8]. Bash:tip_colors_and_formatting - FLOZz' MISC . 2014. bash:tip_colors_and_formatting - FLOZz' MISC . [ONLINE] Available at: http://misc.flogisoft.com/bash/tip_colors_and_formatting. [Accessed 27 September 2014].

[9]. The chmod command. 2014. The chmod command. [ONLINE] Available at: http://catcode.com/teachmod/chmod_cmd.html. [Accessed 27 September 2014].

[10]. Whiptail(1): dialog boxes from shell scripts - Linux man page. 2014. whiptail(1): dialog boxes from shell scripts - Linux man page. [ONLINE] Available at: http://linux.die.net/man/1/whiptail. [Accessed 27 September 2014].

[11]. How to read file from line x to the end of a file in bash - Stack Overflow. 2014. how to read file from line x to the end of a file in bash - Stack Overflow. [ONLINE] Available at: http://stackoverflow.com/questions/14110223/how-to-read-file-from-line-x-to-the-end-of-a-file-in-bash. [Accessed 28 September 2014].

[12]. Shell Script to create user in Linux using text file data. 2014. Shell Script to create user in Linux using text file data. [ONLINE] Available at: http://forums.devshed.com/scripts-94/shell-script-create-user-linux-using-text-file-data-81336.html. [Accessed 28 September 2014].

Licence:
+-========-+

Licence: LGPL, (c) Matthew Utin 2014-2
You can use this code in any tool but you must credit it. There are going to be Detailed comments provided for use in my tool.

COMMENT1
Create_a_regular_user() #opt 1
{
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better to read the information.
if [ $(id -u) -eq 0 ]; then
# The title of command/information. Within the: matts_decoder_base64
# ╔══════════════════════════════════════════════════════════════════════╗
# █ Adding a new (regular user) to the system step 1 enter the username. █
# ╚══════════════════════════════════════════════════════════════════════╝
matts_decoder_base64 4pWU4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWXDQriloggQWRkaW5nIGEgbmV3IChyZWd1bGFyIHVzZXIpIHRvIHRoZSBzeXN0ZW0gc3RlcCAxIGVudGVyIHRoZSB1c2VybmFtZS4g4paIDQrilZrilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZ0=

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
}

Create_a_root_user() #opt 2
{
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
if [ $(id -u) -eq 0 ]; then
# The title of command/information. Within the: matts_decoder_base64
# ╔═════════════════════════════════════════════════════════════════════════╗
# █ Adding a new (root/admin user) to the system step 1 enter the username. █
# ╚═════════════════════════════════════════════════════════════════════════╝
matts_decoder_base64 4pWU4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWXDQriloggQWRkaW5nIGEgbmV3IChyb290L2FkbWluIHVzZXIpIHRvIHRoZSBzeXN0ZW0gc3RlcCAxIGVudGVyIHRoZSB1c2VybmFtZS4g4paIDQrilZrilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZ0=

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
}

add_a_usergroup_to_a_user() #opt 3
{
# Used the two commands to change the text strings to Hex. cat file.txt | hexdump -v -e '"\\\x" 1/1 "%02x" ""'
# echo"sometext" | hexdump -v -e '"\\\x" 1/1 "%02x" ""'
# eval `printf ""` Will be used to exacute the hexadecimal code e.g. Base 16.
eval `printf "\x63\x6c\x65\x61\x72\x0a"` #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
read -p "The user group you want to add to the user: " group
read -p "Enter the user: " username
usermod -a -G $group $username #code to add a usergroup to the user.
}

create_a_new_usergroup() #opt 4
{
# Used the two commands to change the text strings to Hex. cat file.txt | hexdump -v -e '"\\\x" 1/1 "%02x" ""'
# echo"sometext" | hexdump -v -e '"\\\x" 1/1 "%02x" ""'
# eval `printf ""` Will be used to exacute the hexadecimal code e.g. Base 16.
eval `printf "\x63\x6c\x65\x61\x72\x0a"` # clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
eval `printf "\x72\x65\x61\x64\x20\x2d\x70\x20\x22\x45\x6e\x74\x65\x72\x20\x74\x68\x65\x20\x67\x72\x6f\x75\x70\x20\x79\x6f\x75\x20\x77\x6f\x75\x6c\x64\x20\x6c\x69\x6b\x65\x20\x74\x6f\x20\x63\x72\x65\x61\x74\x65\x3a\x20\x22\x20\x6e\x65\x77\x67\x72\x6f\x75\x70\x0a"` # read -p "Enter the group you would like to create: " newgroup
eval `printf "\x67\x72\x6f\x75\x70\x61\x64\x64\x20\x24\x6e\x65\x77\x67\x72\x6f\x75\x70\x0a"` # groupadd $newgroup #creates new usergroups.
}

show_the_usergroups_that_a_user_is_linked_to() #opt 5
{
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
read -p "Enter the username: " groups # shows the user groups that the user is in.
groups $groups
}

show_all_usergroups_on_the_system() #opt 6
{
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
cat /etc/group |cut -d: -f1 # Using the cat command to look up usergroups in the /etc/group file.
}

show_all_users_on_the_system() #opt 7
{
clear
cat /etc/passwd # Using the cat command to see all users on the system as it shows the output of the file.
}

remove_a_usergroup_from_a_user() #opt 8
{
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
read -p "Enter the username: " username_matts_code
read -p "Enter the group you would like to remove from that user [e.g. root]: " group_matts_code
gpasswd -d $username_matts_code $group_matts_code #Removes a usergroup from a system user.
}

remove_delete_usergroup_from_system() #opt 9
{
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
read -p "Enter the usergroup name you would like to remove from the system: " matts_usergroup_del
groupdel $matts_usergroup_del # deletes a usergroup from the system.
}

remove_user_and_home_directory_or_just_the_user_account() #opt 10
{
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
echo " "
echo "If you don't want to make any changes or you have hit the wrong option." # The title of command/information.
echo "Hit [Enter] to go back to the menu."
# The title of command/information. Within the: matts_decoder_base64
# ╔══════════════════════════════════════════════════════════════════════╗
# █ If you see the error:                                                █
# █ userdel: user mail spool (/var/mail/user) not found.                 █
# █ The command is still executed, its due to the Ubuntu 14.04.1 update, █
# █ showing the user of not having a setup mail account.                 █
# ╚══════════════════════════════════════════════════════════════════════╝
matts_decoder_base64 4pWU4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWXDQriloggSWYgeW91IHNlZSB0aGUgZXJyb3I6ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg4paIDQriloggdXNlcmRlbDogdXNlciBtYWlsIHNwb29sICgvdmFyL21haWwvdXNlcikgbm90IGZvdW5kLiAgICAgICAgICAgICAgICAg4paIDQriloggVGhlIGNvbW1hbmQgaXMgc3RpbGwgZXhlY3V0ZWQsIGl0cyBkdWUgdG8gdGhlIFVidW50dSAxNC4wNC4xIHVwZGF0ZSwg4paIDQriloggc2hvd2luZyB0aGUgdXNlciBvZiBub3QgaGF2aW5nIGEgc2V0dXAgbWFpbCBhY2NvdW50LiAgICAgICAgICAgICAgICAg4paIDQrilZrilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZ0=
echo " "
read -p "Hit [Y]yes if you want to remove the User and home directory or Hit [N]no if you want to just remove the user. $foo? [Y/N]" answer #using a yes or no script.
if [[ $answer = y ]] ; then # if y then the below code is exacuted.
read -p "Enter the user you want to remove from the system: " users
userdel -r $users # removes the user and directory.
elif [[ $answer = n ]] ; then # if n then the below code is exacuted.
read -p "Enter the user you want to remove from the system: " user
userdel $user # Just removes the user.
fi # if [Enter] key is hit then back to menu.
}

make_a_file_executable() #opt 11
{
clear
read -p "Enter the path of the file (e.g. /home/user/Desktop): " matts_master_path #Gets the path of the file.
cd $matts_master_path #Change the path to the files path.
ls #lists the files in the path.
read -p "Enter the file you want to make executable: " matts_file_name #Gets the file name.
chmod +x $matts_file_name #This is the command used to make the file executable.
echo "Command Executed."
}

add_new_users_from_a_text_file() #opt 12
{
clear
       echo "The current directory is: `pwd`/matts_users_database.txt" #Shows the current directory.
       echo
       echo -e "Do you want to use the default PATH that is shown above? Yes[y] & No[n]." #Yes/no options.
       read matts_yes_no
if [ $matts_yes_no == y ]; then
                      Path=$($pwd)matts_users_database.txt #If yes then it will use the current path.
else
       echo -n "Enter the path of the file (e.g. /home/user/Desktop/filename.txt): " #If no then the user will have to type the files path.
       read Path #Puts the information into the path to pass it on to the variable.
fi
if [ -e $Path ]; then  #If the file exists.
home_path_name="/home/" #Home directory
#tail will start the file from a selected line, as you can see it's set on the 5th line.
tail -n +5 ${Path} | \
while read system_user users_password system_group #Reads the 3 areas within the text file and as you can see i have put them into variables.
do
  groupadd ${system_group} #Adds the usergroups
  useradd -g ${system_group} -p ${users_password} -m -d ${home_path_name}${system_user} ${system_user} #Adds the user to the system.

	done
else  #If the file cannot be found, the code below will be shown.
echo -e "╔═══════════════════════════════╗"
echo -e "█ Sorry the file was not found! █"
echo -e "╚═══════════════════════════════╝"
fi
        
}

delete_users_listed_in_the_text_file() #opt 13
{
clear
#This script is used to delete the users from the system using the text file.
# The title of command/information. Within the: matts_decoder_base64
# ╔══════════════════════════════════════════════════════════════════════╗
# █ If you see the error:                                                █
# █ userdel: user mail spool (/var/mail/user) not found.                 █
# █ The command is still executed, its due to the Ubuntu 14.04.1 update, █
# █ showing the user of not having a setup mail account.                 █
# ╚══════════════════════════════════════════════════════════════════════╝
matts_decoder_base64 4pWU4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWXDQriloggSWYgeW91IHNlZSB0aGUgZXJyb3I6ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg4paIDQriloggdXNlcmRlbDogdXNlciBtYWlsIHNwb29sICgvdmFyL21haWwvdXNlcikgbm90IGZvdW5kLiAgICAgICAgICAgICAgICAg4paIDQriloggVGhlIGNvbW1hbmQgaXMgc3RpbGwgZXhlY3V0ZWQsIGl0cyBkdWUgdG8gdGhlIFVidW50dSAxNC4wNC4xIHVwZGF0ZSwg4paIDQriloggc2hvd2luZyB0aGUgdXNlciBvZiBub3QgaGF2aW5nIGEgc2V0dXAgbWFpbCBhY2NvdW50LiAgICAgICAgICAgICAgICAg4paIDQrilZrilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZDilZ0=
       echo "The current directory is: `pwd`/matts_users_database.txt" #Shows the current directory.
       echo
       echo -e "Do you want to use the default PATH that is shown above? Yes[y] & No[n]." #Yes/no options.
       read matts_yes_no
if [ $matts_yes_no == y ]; then
       Path=$($pwd)matts_users_database.txt #If yes then it will use the current path.
else
       echo -n "Enter the path of the file (e.g. /home/user/Desktop/filename.txt): " #If no then the user will have to type the files path.
       read Path
fi
if [ -e $Path ]; then 		#If the file exists.
  home_path_name="/home/" #Home directory
#tail will start the file from a selected line, as you can see it's set on the 5th line.
tail -n +5 ${Path} | \
while read system_user users_password system_group #Reads the 3 areas within the text file and as you can see i have put them into variables.
do                
                userdel -r ${system_user} #Deletes username with home directory from the system.

	done
else  #If the file cannot be found, the code below will be shown.
echo -e "╔═══════════════════════════════╗"
echo -e "█ Sorry the file was not found! █"
echo -e "╚═══════════════════════════════╝"
fi
}

version_information() #opt 17
{
uname -a #Shows system information.
}

about() #opt 15
{
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
# Used the two commands to change the text strings to Hex. cat file.txt | hexdump -v -e '"\\\x" 1/1 "%02x" ""'
# echo"sometext" | hexdump -v -e '"\\\x" 1/1 "%02x" ""'
# eval `printf ""` Will be used to exacute the hexadecimal code e.g. Base 16.
eval `printf "\x65\x63\x68\x6f\x20\x24\x7b\x74\x6d\x70\x2d\x60\x64\x61\x74\x65\x60\x7d\x20\x23\x20\x73\x68\x6f\x77\x73\x20\x64\x61\x74\x61\x20\x61\x6e\x64\x20\x74\x69\x6d\x65\x2e\x0a"` # echo ${tmp-`date`} # shows data and time.
# About title.
# */---------------------------------------------------/
#     ###    ########   #######  ##     ## ########     
#    ## ##   ##     ## ##     ## ##     ##    ##        
#   ##   ##  ##     ## ##     ## ##     ##    ##        
#  ##     ## ########  ##     ## ##     ##    ##        
#  ######### ##     ## ##     ## ##     ##    ##        
#  ##     ## ##     ## ##     ## ##     ##    ##    ### 
#  ##     ## ########   #######   #######     ##    ### 
# /---------------------------------------------------/*

echo -e "\x2a\x2f\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2f\x0a\x20\x20\x20\x20\x23\x23\x23\x20\x20\x20\x20\x23\x23\x23\x23\x23\x23\x23\x23\x20\x20\x20\x23\x23\x23\x23\x23\x23\x23\x20\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x23\x23\x23\x23\x23\x23\x23\x23\x20\x20\x20\x20\x20\x0a\x20\x20\x20\x23\x23\x20\x23\x23\x20\x20\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x20\x20\x20\x23\x23\x20\x20\x20\x20\x20\x20\x20\x20\x0a\x20\x20\x23\x23\x20\x20\x20\x23\x23\x20\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x20\x20\x20\x23\x23\x20\x20\x20\x20\x20\x20\x20\x20\x0a\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x23\x23\x23\x23\x23\x23\x23\x23\x20\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x20\x20\x20\x23\x23\x20\x20\x20\x20\x20\x20\x20\x0a\x20\x23\x23\x23\x23\x23\x23\x23\x23\x23\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x20\x20\x20\x23\x23\x20\x20\x20\x20\x20\x20\x20\x20\x0a\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x20\x20\x20\x23\x23\x20\x20\x20\x20\x23\x23\x23\x20\x0a\x20\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x23\x23\x23\x23\x23\x23\x23\x23\x20\x20\x20\x23\x23\x23\x23\x23\x23\x23\x20\x20\x20\x23\x23\x23\x23\x23\x23\x23\x20\x20\x20\x20\x20\x23\x23\x20\x20\x20\x20\x23\x23\x23\x20\x0a\x2f\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2d\x2f\x2a\x0a"
echo " "
echo "------------->>[By: Matthew Utin]" # Information.
echo "------------->>[Date: Sun Oct 26 2014]"
echo "------------->>[Version: 2.0, Ubuntu Specific, Commands.]"
echo " "
echo "╔═══════════════════════════════════════════════════════════════════════╗"
echo "█ Licence: LGPL, (c) Matthew Utin 2014-2                                █" # Information.
echo "█ You can use this code in any tool but you must credit it.             █"
echo "█ There are going to be Detailed comments provided for use in this tool.█"
echo "╚═══════════════════════════════════════════════════════════════════════╝"
echo " "
}

change_log() #opt 16
{
#Shows what has been changed within the script, useing the whiptail interface.
whiptail --title "Change Log: [Hit Enter To Exit.]" --msgbox "\nThe script user can now make a file executable. Added on (Sat 27th Sep 2014).\n\nThe script user can now add users from a text file. Added on (Fri 26th Sep 2014).\n\nThe script user can now delete users from the system using a text file. Added on (Fri 26th Sep 2014).\n\nBugFixed on option 3, corrupt Hex values. Now deleted and changed on (Fri 14th mar 2015).\n\n" 18 78

}

man_page() #opt 18
{
man ./matts_addusers_script_v2.0.man
}

matts_decoder_base64() #non opt
{
# The python code below will decode the base64 strings that are used within this script.
echo "$1" | python -m base64 -d ; echo

}

matts_main_Script_menu() #opt men & exit 0 opt 14
{
MATTS_MASTER_ROOT=0      #If the user has a USERID=UID of 0 then they are ROOT, if the user has the UID of 1 then they are not a ROOT user and cannot run the script.
if [ "$UID" -ne "$MATTS_MASTER_ROOT" ]; then
echo "You can only run this Script if you are a root user!"
   exit
fi
opt=1 #options
while [ $opt -le 4 ]
do

	clear
printf '\033[8;26;80t' # This code sets the Terminal window size at startup to 033 char size and 26hx80w window size.
echo -e "\e]2;Matt's System Administrative Tools For Linux V2.0. By Matthew Utin.\a" #Sets the Terminal window's title.
echo -e "\e[1;37;47m╔═══════════════════════════════════════════════════╗\e[0m" # The title of my linux tool
echo -e "\e[1;37;47m█ Matt's System Administrative Tools For Linux V2.0 █\e[0m" #\e means execute the following font codes also this is shown with the -e on the echo.
echo -e "\e[1;37;47m╚═══════════════════════════════════════════════════╝\e[0m" #[1 = bold font 37 = foreground white 47 = background gray. m=code start \e[0m =End code.
echo -e "\e[1;4;5;34m${tmp-`date`}.\e[0m" # Shows date and time, 1=bold 4=underline 5=blink 34=blue.
echo -e "
1) Create a regular user.
2) Create a root/admin user.
3) Add a usergroup to a user.
4) Create a new usergroup.
5) Show the usergroups that a user is linked to.
6) Show all usergroups on the system.
7) Show all users on the system.
8) Remove a usergroup from a user.
9) Remove/delete usergroup from system.
10) Remove User and home directory or just the user account.
11) Make a file executable.
12) Add users to the system from a text file.
13) Delete users from the system using a text file.
14) \e[1;31m[EXIT!]\e[0m\n
15) \e[1;93m(About.)\e[0m
16) \e[1;93m(Change Log.)\e[0m
17) \e[1;93m(System version information.)\e[0m
18) \e[1;93m(Man/manual Page.)\e[0m\n"
read -p "Please enter your option: [1-18]? " opt #Main menu selection. EXIT 1=bold 31 = Red, About 1=bold 93=Yellow. m=code start \e[0m =End code, \e means execute the following font codes also this is shown with the -e on the echo. \n means space below to the next line.
clear
case $opt in #Options code so that the script knows where the options are linked within the script, by typing in the functions.
1) Create_a_regular_user ;;
2) Create_a_root_user ;;
3) add_a_usergroup_to_a_user ;;
4) create_a_new_usergroup ;;
5) show_the_usergroups_that_a_user_is_linked_to ;;
6) show_all_usergroups_on_the_system ;;
7) show_all_users_on_the_system ;;
8) remove_a_usergroup_from_a_user ;;
9) remove_delete_usergroup_from_system ;;
10) remove_user_and_home_directory_or_just_the_user_account ;;
11) make_a_file_executable ;;
12) add_new_users_from_a_text_file ;;
13) delete_users_listed_in_the_text_file ;;
14) exit 0 ;;
15) about ;;
16) change_log ;;
17) version_information ;;
18) man_page ;;
*) echo -e "You have input a bad option!" #This line is shown if the users of the script has typed in the wrong key.
esac
echo -e "\nPress (1) to go back to the main menu." #This line shows the script user to type 1, to get back to the main menu after the selected operations are finished.
read opt
done
}
matts_main_Script_menu
clear #This is used to clear the command line screen above from past commands to make the command prompt look more tidy. This makes it better/easier to read.
exit 0
#----------------------------------------------------------------------->>!END<<--------------------------------------------------------------------//
