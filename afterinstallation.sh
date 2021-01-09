#!/bin/bash

sudo systemctl daemon-reload
sudo systemctl enable gunicorn
sudo rm /etc/nginx/sites-enabled/fundoo.conf
sudo ln -s /etc/nginx/sites-available/fundoo.conf /etc/nginx/sites-enabled
sudo nginx -t

