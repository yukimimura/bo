## アプリ名　
### Find Book

## 概要
読みたい漫画などの書籍を探すためのアプリです。<br>
ジャンルやキーワードで条件検索し、5段階評価ができます。<br>
その他にも気が合うユーザーをフォローし、メッセージのやり取りなどSNSとしての側面もあります。

## デプロイ
https://find-book-0605.herokuapp.com/

## 使用言語・技術
* HTML/CSS
* Ruby 2.5.3
* javascript
* Ruby on Rails 5.2.4
* Mysql 5.5.62
* jQuery
* Bulma
* AmazonS3
* gem(devise/kaminari/admin/carrierwave/ransack/pry-rails/fog-aws/dotenv-rails)

## 機能
<h4> ・条件検索機能 </h4>
https://drive.google.com/file/d/17BinyTiKiW2J0KNjkUt3chNeofxjOxx9/view?usp=sharing
<h4> ・評価・コメント機能 </h4>
https://drive.google.com/file/d/1jCQfR4BhcdXeHxZjPcUzQqt0zzbD285f/view?usp=sharing
<h4> ・検索ソート機能 </h4>
https://drive.google.com/file/d/1GZX0WEF6WeOfsOjPPUn6fHi2BnYY6EDV/view?usp=sharing
<h4> ・ユーザー登録機能 </h4>
https://drive.google.com/file/d/16xJIvlxy1PAS5vflMkHnus-oa8uIklFE/view?usp=sharing
<h4> ・フォロー・アンフォロー機能 </h4>
https://drive.google.com/file/d/16xJIvlxy1PAS5vflMkHnus-oa8uIklFE/view?usp=sharing
<h4> ・メッセージ機能 </h4>
https://drive.google.com/file/d/1_GzP8fS2P6S909AX2Ixbe6spSM1cEMBC/view?usp=sharing
<h4> ・お気に入り機能 </h4>
https://drive.google.com/file/d/1TrMqDSY88nMTIr4OD030yJPeG1FMKl_Y/view?usp=sharing

## ER図
https://drive.google.com/file/d/1kzoVZFosVEoM2uuzZ3lDFT-DSAPH5SzS/view?usp=sharing

## インストール
$ git clone https://github.com/yukimimura/find-book.git<br>
$ bundle install<br>
$ rails db:create<br>
$ rails db:migrate<br>
$ rails s
