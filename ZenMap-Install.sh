#!/bin/bash

  printf "\e[31m [+] Starting installation ... \e[0m\n"
	sudo wget -q https://nmap.org/dist/zenmap-7.80-1.noarch.rmp &>/dev/null
	printf "\e[32m [+] Receiving data from nmap.org ... \e[0m\n"
	sudo apt-get install alien &>/dev/null
	printf "\e[32m [+] Install alien ... \e[0m\n"
	alien zenmap_7.80-1.noarch.rmp &>/dev/null
	dpkg -i zenmap_7.80-2_all.deb &>/dev/null
	printf "\e[32m [+] Unpacking of ZenMap ... soon finishied \e[0m\n"
	sleep 1
	printf "\e[32m [+] Installation complete ... start-up ZenMap as root \e[0m\n"
	sudo zenmap
	sleep 2