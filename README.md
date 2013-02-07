Ugly V-Host Maker
=================

Make Apache virtual hosts on a Mac, for local website development and testing.

## Why is it ugly?
Because it was made using AppleScript, need I say more? Actually, I'm not an AppleScript programmer. It was the quickest way that I found to make this work for my needs. There is certainly room for improvement.

I'm relatively new to Git. As such, the commit history is ugly too. Just happy it made it on GitHub :).

## If it's so ugly, why would I want it?
It works! Here's how:
1. First it asks for an admin email address, for the virtual host record. This address will persist for future requests.
2. Next, enter the path for your virtual host configuration files to be stored. This value will persist as well. I like to keep mine within my user profile. This makes it easy to backup and sync with my home computer.
3. Then choose a project folder in the dialog box. This is where the website's index file is stored.
4. Enter the local domain name that you would like to use. If the name of the project folder name is the same as the domain name, the extension will be stripped off. The extension ".dev" is added to the folder name, to be used as your local domain name. So, example, example.com or example.co.uk would become example.dev. Rename as needed.
5. Confirm that the settings are correct.
6. You will be prompted for your password, since we are dealing with system files.
7. Your domain name will be added to your hosts file. For example, example.com and www.example.com would be created.
8. Separate virtual host files would be created for each site. This makes it easier to manager lots of sites. More on how to configure this later.

## Assumptions

### VHosts Folder
The script assumes that you have a folder to store your virtual hosts files and that it's defined in the Apache httpd.conf file. This folder should only store virtual host files created with this utility.
```sh
sudo pico /private/etc/apache2/httpd.conf

# CTRL + V to the bottom of the file and add an include. Mine is under the 'Virtual hosts' section.
Include /path/to/vhosts/*.conf
```
When the script asks for the vhosts path, enter: /path/to/vhosts/

Since the .conf files will be read alphabetically, you may want to add a _httpd-vhosts.conf file in your vhosts folder (note the leading underscore). This will allow settings to come before your vhosts load. Such as 'NameVirtualHost *:80'.

### Index Files
The vhost will be created assuming that if an index.html file exists, it will be called first. If not, index.php is called. It's configured like this to mimic most Linux web servers.

## WORK IN PROGRESS - More to come.
