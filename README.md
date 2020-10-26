# Find Book

## 概要
読みたい漫画などの書籍を見つけるためのアプリです。<br>
ジャンルやキーワードで条件検索し、5段階評価をすることができます。<br>
その他にもユーザーをフォローし、メッセージのやり取りなどSNSとしての側面もあります。

## デプロイ
https://find-book-0605.herokuapp.com/

## 開発環境
* Ruby 2.5.3
* Ruby on Rails 5.2.4
* Mysql 5.5.62
* javascript
* jQuery
* Bulma
* AmazonS3

## 機能
<h4> ・条件検索機能 </h4>
<img src="home_sample.png" width="300" height="300">
<br>
<h4> ・評価・コメント機能 </h4>
<img src="review_sample.png" width="300" height="250">
<br>
<h4> ・検索ソート機能 </h4>
<img src="sort_sample.png" width="130" height="50">
<br>
<h4> ・ユーザー登録機能 </h4>
<img src="user_sample.png" width="300" height="250">
<br>
<h4> ・フォロー・アンフォロー機能 </h4>
<img src="follow_sample.png" width="130" height="50">
<br>
<h4> ・メッセージ機能 </h4>
<img src="message_sample.png" width="300" height="250">
<br>
<h4> ・お気に入り機能 </h4>
<img src="fav_sample.png" width="100" height="100">
<br>

## ER図
<h4> ER図１ </h4>
<img src="er1.png" width="500" height="350">
<h4> ER図2 </h4>
<img src="er2.png" width="600" height="300">

## インストール
$ git clone https://github.com/yukimimura/find-book.git<br>
$ bundle install<br>
$ rails db:create<br>
$ rails db:migrate<br>
$ rails s
