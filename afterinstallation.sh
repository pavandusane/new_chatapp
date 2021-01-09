#!/bin/bash

sudo systemctl daemon-reload
sudo systemctl enable gunicorn
sudo nginx -t

