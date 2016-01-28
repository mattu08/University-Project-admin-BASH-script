#!/usr/bin/env python
# -*- coding: utf-8 -*-

# By Matthew Utin , System Administrative Tools.
# python --version Python 2.7.6
import os #Imports the Python os module. So the OS function can be used.
os.system("clear") #Uses the Linux Clear command.
loop = 1 #Starts loop
choice = 0 #Sets the choice to 0 int.
#While loop below, set to 1 int.
while loop == 1:
    print " " #Print is used to print out text numbers or symbols 
    print "       ╔═══════════════════════════════════════════════════════════════════╗"
    print "       █ Matt's System Administrative Tools For Linux python, Alpha build. █" # Information.
    print "       ╚═══════════════════════════════════════════════════════════════════╝"
    print " "
    print "Options below:" #Options listed, to the user.
    print " "
    print "1) About"
    print "2) Show all user groups on the system"
    print "3) Show all users on the system"
    print "4) Add a usergroup to the system"
    print "5) Add a new user to the system"
    print "6) Exit"
    print " "

    choice = raw_input("Please enter your option: [1-6]? ") #Sets the choice cursor line text. Also raw_input() is used and not input() as this script is using Python 2.7.6 so you can use input() as this is in Python 3.
    choice = int(choice) # selects the int.
    if choice == 1: # If statements 
	os.system("clear")
	print "╔═══════════════════════════════════════════════════════════════════════╗"
	print "█       Matt's System Administrative Tools For Linux Alpha build        █" # Information.
	print "█       This script has been ported from the BASH Script version.       █"
	print "╚═══════════════════════════════════════════════════════════════════════╝"
    elif choice == 2: # elif statement
	os.system("cat /etc/group |cut -d: -f1") # Show all user groups on the system
    elif choice == 3:
	os.system("cat /etc/passwd") # Show all users on the system
    elif choice == 4:
	grp2 = raw_input("Add usergroup: ") # Adds a usergroup to the system
	os.system("groupadd " + grp2) # groupadd command the adds the usergroup
    elif choice == 5:
	user = raw_input("Enter the username: ") # Adds a new user to the system
	os.system("useradd "+ user) # Gives the useradd the variable from the user input then executes 
	os.system("passwd "+ user) # Gives the userpw the variable from the user input
    elif choice == 6: # End loop and exit.
        loop = 0 
	print "Thank you for using Matt's System Administrative Tools." # message shown when script exits.
    else:
       print "Select an option from the menu." # If the user types in the wrong choice e.g. 7, then it will show this message.
