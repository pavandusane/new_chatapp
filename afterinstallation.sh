#!/bin/bash

sudo systemctl daemon-reload
sudo systemctl enable gunicorn
sudo systemctl start gunicorn
sudo systemctl status gunicorn
sudo ln -s /etc/nginx/sites-available/fundoo /etc/nginx/sites-enabled
sudo service nginx restart
sudo nginx -t
sudo rm /etc/nginx/sites-enabled/default
sudo service nginx restart	
