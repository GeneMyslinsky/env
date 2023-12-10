#!/bin/bash

# download the vscode package in windows and it should come with the non .exe version which is just a bash script to create a server
rm /home/gene/.macros/code
rm /home/gene/.macros/explorer

ln -s "/mnt/c/Users/mysli/AppData/Local/Programs/Microsoft VS Code Insiders/bin/code-insiders" code
ln -s /mnt/c/Windows/explorer.exe explorer
