Ugly V-Host Maker
=================

Make Apache virtual hosts on a Mac, for local website development and testing.

## Why is it ugly?
Because it was made using AppleScript, need I say more? Actually, I'm not an AppleScript programmer and don't really care to be one. It was the quickest way that I found to make this work for my needs.

I'm relatively new to Git. As such, the commit history is ugly too. Just happy it made it up here :).

## If it's so ugly, why would I want it?
It works! Here's how:
* First it asks for an admin email address, for the virtual host record. This address will persist for future requests.
* Next, enter the path for your virtual host configuration files to be stored. This value will persist as well. I like to keep mine within my user profile. This makes it easy to backup and sync with my home computer.
* Then choose a project folder in the dialog box. This is where the website's index file is stored.
* Enter the local domain name that you would like to use. If the name of the project folder is the same as the domain name, the extention will be stripped and ".dev" will be added. Rename as needed.
* Confirm that the settings are correct.
* You will be prompted for your password, since we are dealing with system files.
* Your domain name will be added to your hosts file. For example, example.com and www.example.com would be created.
* The separate virtual host file would be created for each site. This makes it easier to manager lots of sites. More on how to configure this later.

## WORK IN PROGRESS - More to come.
