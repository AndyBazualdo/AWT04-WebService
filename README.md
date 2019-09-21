# WebService deployment

The project is focused to create an image of a specialized web service application, the app is dedicated to convert video, audio and make OCR recognition.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Before have the image up and running, is needed to make
some installations and set ups before.
Verify if docker is instaled
```
Command docker --version
```
If docker is installed the version will be displayed
if not should be installed following the steps:

First, update your existing list of packages:
```
$ sudo apt update
```
Next, install a few prerequisite packages which let apt use packages over HTTPS:
```
$ sudo apt install apt-transport-https ca-certificates curl software-properties-common
```
Then add the GPG key for the official Docker repository to your system:
```
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```
Add the Docker repository to APT sources:
```
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
```
Next, update the package database with the Docker packages from the newly added repo:
```
$ sudo apt update
```
Make sure you are about to install from the Docker repo instead of the default Ubuntu repo:
```
$ apt-cache policy docker-ce
```
Finally, install Docker:
```
$ sudo apt install docker-ce
```
Docker should now be installed, the daemon started, and the process enabled to start on boot. Check that it's running:
```
$ sudo systemctl status docker
```

Install java jdk 1.8 using the following command :
```
Command sudo apt-get update
Command sudo apt install openjdk-8-jre-headless
```
We need a folder to clone the project
```
Command cd /home/<userName>
Command mkdir <new folder name>
```
Clone project using git commads
```
Command git clone https://github.com/FerHinojosa/AWT04-WebService.git
Command cd AWT04-WebService
Command checkout develop
Command pull origin develop
```
Review if dockerfilewas copied inside AWT04-WebService folder.
```
Command ls -al dockerfile
```
The file should be listed in your promp

### Installing
First pull the container we will use to create our image:
```
Command docker pull ubuntu
```
To start the instalation of the image will be made using the following steps:
```
Command docker build -i dockerfile
```