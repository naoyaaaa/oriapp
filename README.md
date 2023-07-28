# アプリケーション名	
MICCA BOZU

# アプリケーション概要
自分の「3日でいいから続けてみたいこと」の宣言と振り返りを通して、様々なことに対してチャレンジし、振り返る習慣をつけることができる。

# URL
* https://oriapp.onrender.com

# テスト用アカウント
* Basic認証/ユーザー名:admin
* Basic認証/パスワード：２２２２
* ログイン/Email:aaa@aaa
* ログイン/Password:111aaa

# 利用方法 
1　トップページからユーザー新規登録を行う
２　ヘッダーの「宣言する」ボタンより、目標を入力するページに遷移し、目標の内容を入力し、投稿する
３　マイページにて１日終了毎に、目標の振り返りを記入する
４　３日経過＆振り返り3回投稿にて「Miccaポイント」をゲットし、キャラクターの坊主が成長する
（適宜）目標一覧画面にて、それぞれ目標に対して「えらいぞボタン」を何度でも押すことができる。

# アプリケーションを作成した背景
* 20・30代の若手社会人「勉強しようと思うけど続かなくて・・・・」という悩みに「続けようと思えるものに出会えていないのでは」という答えを。
* 一般的に「続けられない・3日坊主」という言葉を「たくさんのことを試している・新たな経験ができている」という意味合いに変換したかった

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1Pa6wnP6DaNTFTSTnW44iA7QYijISl9JeHa98rVR9-O8/edit#gid=1785908763

# 実装した機能についての画像やGIFおよびその説明
ログイン前の画面でユーザーに概要説明

[![Image from Gyazo](https://i.gyazo.com/a379e4d6f57d1be1eb9a4db0f6a11237.gif)](https://gyazo.com/a379e4d6f57d1be1eb9a4db0f6a11237)

目標を打ち込むとタイムラインに投稿されます。目標の立て方は動機づけがしやすい目標の立て方を、事前に表示させガイドします。

[![Image from Gyazo](https://i.gyazo.com/9f01bfb0a3a7aa22a056ab2ea541903f.gif)](https://gyazo.com/9f01bfb0a3a7aa22a056ab2ea541903f)

立てた目標には１日に１度ふりかえりを書くフォームが現れ、記録できます

[![Image from Gyazo](https://i.gyazo.com/be82df127b046c54c410ee4311c3b1cc.gif)](https://gyazo.com/be82df127b046c54c410ee4311c3b1cc)

いいな、と思う投稿には無限にいいねがつけられます

[![Image from Gyazo](https://i.gyazo.com/308449d9843ebfbc9bc4e4b175b2b5d4.gif)](https://gyazo.com/308449d9843ebfbc9bc4e4b175b2b5d4)

# 実装予定の機能
* コメント機能(お互いに励ましのコメントを送ることができる)

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/76276fd21692c7048ac83e359e30aef2.png)](https://gyazo.com/76276fd21692c7048ac83e359e30aef2)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/fece385e2191a14ea33d937a9b31590e.png)](https://gyazo.com/fece385e2191a14ea33d937a9b31590e)

# 開発環境
Ruby/Ruby on Rails/MySQL/Github/Render/Visual Studio Code

# 工夫したポイント
* 実際の友人をペルソナとしてヒアリング、仮完成の後に使用してもらいフィードバックをもらい、改善を重ねました。
* 多くの人はPCを開く手間が大きいと考え、基本的にスマートフォンで活用できるようにビューファイルを検討しました。
