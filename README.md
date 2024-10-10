# Termux Utilities

This repository contains a collection of scripts and utilities that you can use on my Android device running Termux. We have created these scripts to automate some of the tasks that we perform frequently. Feel free to use them and modify them as you like.

## Installation

To install termux, from your android device, google "termux-app github" and click on the first link. Then go to the Releases section and download the latest version of the app. Once you have installed the app, open it and update, upgrade and install git using the following commands:

```bash
pkg update
pkg upgrade
pkg install git
```

Now, clone this repository using the following command:

```bash
git clone https://github.com/Tech-Innovation/termux-utilities.git
```

## Usage

To use the scripts, navigate to the directory where you have cloned the repository, then navigate to the scripts directory and run the script that you want to use.

### SSH

To install and configure an SSH server on your device, run the following command:

```bash
bash ssh_server.sh
```


<!-- Links -->
[termux-utilities-repo]: https://github.com/Tech-Innovation/termux-utilities.git