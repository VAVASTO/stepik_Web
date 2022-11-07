sudo ln -s /home/box/web/nginx.conf /etc/nginx/sites-enable/nginx.conf
sudo ln -s /home/box/web/nginx.conf /etc/nginx/nginx.conf
sudo systemctl restart nginx
gunicorn --bind 0.0.0.0:8080 hello:app