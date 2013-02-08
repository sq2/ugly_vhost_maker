Ugly V-Host Maker
=================

Make Apache virtual hosts on a Mac, for local website development and testing.

## Why is it ugly?
Because it was made using AppleScript, need I say more? Actually, I'm not an AppleScript programmer. It was the quickest way that I found to make this work for my needs. There is certainly room for improvement.

I'm relatively new to Git. As such, the commit history is ugly too. Just happy it made it on GitHub :).

## If it's so ugly, why would I want it?
It works! Here's how:
* First it asks for an admin email address, for the virtual host record. This address will persist for future requests.
* Next, enter the path for your virtual host configuration file. This value will persist as well. I like to keep mine within my user profile. This makes it easy to backup and sync with my home computer.
* Then choose a project folder in the dialog box. This is where the website's index file is stored.
* Enter the local domain name that you would like to use. If the name of the project folder name is the same as the domain name, the extension will be stripped off. The extension ".dev" is added to the folder name, to be used as your local domain name. So, example, example.com or example.co.uk would become example.dev. Rename as needed.
* Confirm that the settings are correct.
* You will be prompted for your password, since we are dealing with system files.
* Your domain name will be added to your hosts file. For example, example.com and www.example.com would be created.
* Your virtual host will be appended to the .conf file chosen above. Optionally, a separate virtual host files could be created for each site. This makes it easier to manager lots of sites. More on how to configure this below.

## Assumptions

### Modern OS
This script has been used since Snow Leopard. If you are running an older OS, stop reading and buy at least a Mac Mini for $599. Okay, continue reading.

### Local Apache
We assume that Apache is configured and running on your Mac.

### Knowledge
A little knowledge about how web servers work wouldn't hurt.

### Index Files
The virtual host will be created assuming that if an index.html file exists, it will be called first. If not, index.php is called. It's configured like this to mimic most Linux web servers.


## Optional Separate Virtual Host Files
When choosing the configuration path, if a folder is entered, separate virtual hosts files will be created for each local domain. This folder should only store virtual host files created with this utility.
```sh
sudo pico /private/etc/apache2/httpd.conf

# Search using CTRL + W and enter "# Virtual hosts" without the quotes. Comment out the following line and add the next line.
#Include /private/etc/apache2/extra/httpd-vhosts.conf
Include /path/to/vhosts/*.conf
```
When the script asks for the vhosts path, enter: /path/to/vhosts/

Since the .conf files will be read alphabetically, you may want to add a _httpd-vhosts.conf file in your vhosts folder (note the leading underscore). This will allow settings to come before your vhosts load. Such as
```sh
'NameVirtualHost *:80'.
```

## THIS README IS A WORK IN PROGRESS
