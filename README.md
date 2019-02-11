# デプロイ設定
## ログのパス
### Unicorn
/var/run/unicorn.log
### Nginx
/var/log/nginx/access.log
### MySQL
/var/log/mysqld.log
### Application
/var/www/project/nunes/log/production.log
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
### Assetプリコンパイル
bundle exec rake assets:precompile RAILS_ENV=production
## エラーの勘所
MySQLとNginxの起動がうまくいった場合は、Unicornに問題があるため、/var/run/unicorn.logを確認する
assetディレクトリを編集した場合は、Assetプリコンパイルを行う
Unicorn起動時にエラーが発生する場合は、MySQLの接続ができていない可能性が高い  
MySQLのコネクションエラーが発生する場合は、pidの権限を確認
