There are so many video tutorials on youtube showing us how to create  Debian packages. 
I have watched many of these tutorials. Now I write my own easy, short way to crate a .deb file.
We should already have gcc, g++ installed...
gcc -v
If not installed, run this command
sudo apt-get install build-essential

Ex. Here I have  5EL273.cc
gcc 5EL273.cc  -o program

Creating the .deb file.
1- mkdir demo
2- cd demo
3- mkdir DEBIAN | 
4- Inside DEBIAL FOLDER touch control

Add this text to control file and save it
5- nano Package: program
Package: PackageName// Set a package name
Version: 0.1 // Version number
Section: Web // 
Priority: optional
Architecture: all
Essential: no
Installed-Size: 1024
Maintainer: myipfs.se// Have a website or maybe an email.
Description: This for having some description about the program
6- cd DEBIAN 
7- mkdir usr 
8- cd usr 
9- mkdir bin | mkdir share
Now we need to have the program, the compiled program should exist in the bin folder.
10- cp /dir/program demo/usr/bin/
11- Inside the share folder, mkdir doc
12- Inside the doc folder, touch copyright | changelog
13- sudo chown root:root -R demo
14- dpkg-deb --build demo //demo is the main folder, created from the beginning

