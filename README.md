# デプロイ設定
## ログのパス
### Unicorn
/var/run/unicorn.log
### Nginx
/var/log/nginx/access.log
### MySQL
/var/log/mysqld.log
## 重要なコマンド
### Unicorn停止
kill -QUIT `cat /var/run/unicorn.pid`
### Unicorn起動
bundle exec unicorn_rails -c /var/www/project/nunes/config/unicorn.rb -D -E production
### Unicornプロセス確認
ps -ef | grep unicorn | grep -v grep
### Nginx再起動
sudo service nginx restart
### MySQL起動
sudo service mysqld start
