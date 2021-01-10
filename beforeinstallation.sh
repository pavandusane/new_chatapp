#!/bin/bash

sudo apt-get update
sudo apt-get install python3-pip python-dev nginx git
sudo apt-get update
sudo pip3 install virtualenv
cd new_chatapp
virtualenv venv
source venv/bin/activate																
pip3 install -r requirements.txt
pip3 install django bcrypt django-extensions
pip3 install gunicorn
