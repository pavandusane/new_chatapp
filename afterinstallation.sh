#!/bin/bash
gunicorn --bind 0.0.0.0:8000 fundoo.wsgi:application
sudo systemctl daemon-reload
sudo systemctl enable gunicorn
sudo ln -s /etc/nginx/sites-available/fundoo /etc/nginx/sites-enabled
sudo nginx -t
sudo service nginx restart

