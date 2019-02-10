# デプロイ設定
## ログのパス
### Unicorn
/var/run/unicorn.log
### Nginx
/var/log/nginx/access.log
### MySQL
/var/log/mysqld.log
## 重要なコマンド
### Unicorn起動
bundle exec unicorn -c /var/www/project/nunes/config/unicorn.rb -D -E production
### Nginx再起動
sudo service nginx restart
### MySQL起動
sudo service mysqld start
