sudo ln -s /home/box/web/nginx.conf /etc/nginx/sites-enable/nginx.conf
sudo ln -s /home/box/web/nginx.conf /etc/nginx/nginx.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
gunicorn --bind 0.0.0.0:8080 hello:app