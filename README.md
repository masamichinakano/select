# README

## アプリケーション名 
select-9

## アプリケーション概要
1.野球チームの監督または代表者が選手の管理ができる。
3.スターティングメンバーをどこでも事前に設定できる。
2.試合結果の管理ができる。

## URL
https://select-9.herokuapp.com/


## 利用方法
1.新規会員登録またはログイン（google or facebookでのログインも可）
2.選手登録：各項目を入力し選手を9人以上登録する。
3.選手一覧：登録した選手の一覧を閲覧できる。
4.選手詳細：一覧表示されている選手をタップするとその選手の詳細を閲覧できる。
5.選手編集：詳細画面から編集ボタンをタップすることで編集画面に遷移し選手の内容を編集できる。
6.選手削除：詳細画面から削除ボタンをタップすることで選手を削除することができる。
7.スタメン設定：スターティングメンバーを決めて保存しておくことができる。（対戦相手の入力と日程の入力は必須）
8.スタメン確認：スタメン設定で保存したものを一覧表示している。
9.検索機能：スタメン確認画面で対戦相手や日程を入力することで保存したスタメンを検索することができる。
10.スタメン詳細：スタメン確認画面で表示されているスタメンをタップすることで詳細を表示できる。
11.スタメン削除：スタメン詳細画面で削除ボタンをタップすることで保存したスタメンを削除できる。
12.試合開始：スタメン詳細画面で「先攻で試合する」と「後攻で試合する」というボタンがありどちらかをタップする。
13.試合画面：「先攻で試合する」と「後攻で試合する」のどちらかをタップするとスコア入力欄、スターティングメンバー詳細、コメント欄が表示される。
14.試合結果保存：試合画面でスコアとコメントを入力後、保存ボタンをタップし保存する。（コメントは無くても保存可）
15.試合結果：試合結果を一覧表示している。試合結果には勝敗の表示もされている。
16.検索機能：試合結果一覧でで対戦相手や日程を入力することで保存した試合結果を検索することができる。
17.試合詳細：過去の試合の詳細を閲覧することができる。
18.試合削除：試合詳細画面の削除ボタンをタップすることで削除できる。


## 目指した課題解決
前提：私は、小学２年生から大学４回生まで現役のプレーヤーとして野球を続け、大学卒業後もクラブチームのコーチと草野球チームでの選手として活動しています。
     その為、野球関係者の知人が多く様々な意見を聞きこのアプリケーションを作成しました。
     このアプリケーションは、小・中学生のクラブチームや子供会、草野球の監督をターゲットとしています。

課題：1.スターティングメンバーを決める際、未だ用紙に記入し書き直しや直前になってからの記入などなど無駄がある。
     2.小・中学生のクラブチームや子供会の監督をされている方々は、全員がボランティアであり休みの日を利用してクラブチームの運営を行っている為、
     　負担が大いにあるにもかかわらず試合に勝つためのプレッシャーを与えられている。
     3.試合結果は未だスコアブックという試合内容を記載するノートに手書きで記述しているが、スコアブックに載らないエラーや内容もあり、
     　その内容に関しては忘れてしまうことが多く、また、ノートもかなり分厚く見る手間もめんどうである。

## 上記課題を解決するための機能
課題１：スマホでスターティングメンバーを事前に設定できることによりいつでもどこでも思いついた時にメンバーの保存ができる。また、保存しておくことにより
　　　　正規の用紙に記述する際のミスが軽減されペーパーレスにも繋がる。

課題２：試合結果と内容を保存できることにより、過去の試合結果をすぐに閲覧でき勝利した時のメンバーや試合の詳細なども確認することで二度目の対戦時に
　　　　対策を立てやすくなる。

課題３：スコアブックに載らない内容をアプリケーションで記載できることで、ミーティング時の振り返りやその後の練習メニューの組み立てがしやすくなり
　　　　チームの強化に繋がる。


## ER図
画像link（https://app.lucidchart.com/invitations/accept/3355c4f3-88e1-4d63-bbdc-c16e8263e318）

## 

## users テーブル

| Column         | Type               | Options     |
| ---------------| -------------------|------------ |
| name           | string             | null: false |
| email          | string             | null: false |
| password       | encrypted_password | null: false |

### Association
- has_many :members
- has_many :matchs
- has_many :fronts
- has_many :backs





## members テーブル

| Column               | Type       | Options                         |
| ---------------------| -----------| --------------------------------|
| name                 | string     | null: false                     |
| age                  | integer    | null: false                     |
| style_id             | integer    | null: false                     | 
| number               | integer    | null: false                     |
| pitcher_position_id  | boolean    | default: false, null: false     |
| catcher_position_id  | boolean    | default: false, null: false     |
| inside_position_id   |boolean     | default: false, null: false     |
| outside_position_id  |boolean     | default: false, null: false     |
| user_id              | references | null: false, foreign_key: true  |


### Association
- belongs_to_active_hash :style


- belongs_to :user
- has_one_attached :image
- has_one :first
- has_one :second
- has_one :third
- has_one :fourth
- has_one :fifth
- has_one :sixth
- has_one :seventh
- has_one :eighth
- has_one :ninth


## matchs テーブル

| Column               | Type       | Options                         |
| ---------------------| -----------| --------------------------------|
| match_name           | string     | null: false                     |
| year_id              | integer    | null: false                     |
| month_id             | integer    | null: false                     | 
| number               | integer    | null: false                     |
| day_id               | integer    | null: false     |
| user_id              | references | null: false, foreign_key: true  |


### Association
- belongs_to_active_hash :year
- belongs_to_active_hash :month
- belongs_to_active_hash :day


- belongs_to :user
- has_one :first, dependent: :destroy
- has_one :second, dependent: :destroy
- has_one :third, dependent: :destroy
- has_one :fourth, dependent: :destroy
- has_one :fifth, dependent: :destroy
- has_one :sixth, dependent: :destroy
- has_one :seventh, dependent: :destroy
- has_one :eighth, dependent: :destroy
- has_one :ninth, dependent: :destroy
- has_one :front, dependent: :destroy
- has_one :back, dependent: :destroy



## fronts テーブル

| Column               | Type       | Options                         |
| ---------------------| -----------| --------------------------------|
| first_fa_inning      | integer    | null: false                     |
| second_fa_inning     | integer    | null: false                     |
| third_fa_inning      | integer    | null: false                     | 
| fourth_fa_inning     | integer    | null: false                     |
| fifth_fa_inning      | integer    | null: false                     |
| sixth_fa_inning      | integer    | null: false                     |
| seventh_fa_inning    | integer    | null: false                     |
| eighth_fa_inning     | integer    | null: false                     |
| ninth_fa_inning      | integer    | null: false                     |
| first_sa_inning      | integer    | null: false                     |
| second_sa_inning     | integer    | null: false                     |
| third_sa_inning      | integer    | null: false                     | 
| fourth_sa_inning     | integer    | null: false                     |
| fifth_sa_inning      | integer    | default: false, null: false     |
| sixth_sa_inning      | integer    | default: false, null: false     |
| seventh_sa_inning    | integer    | default: false, null: false     |
| eighth_sa_inning     | integer    | default: false, null: false     |
| ninth_sa_inning      | integer    | null: false                     |
| front_comment        | string     |                                 |
| user                 | references | null: false, foreign_key: true  |
| match                | references | null: false, foreign_key: true  |


### Association

- belongs_to :user
- belongs_to :match



## backs テーブル

| Column                    | Type       | Options                         |
| --------------------------| -----------| --------------------------------|
| back_first_fa_inning      | integer    | null: false                     |
| back_second_fa_inning     | integer    | null: false                     |
| back_third_fa_inning      | integer    | null: false                     | 
| back_fourth_fa_inning     | integer    | null: false                     |
| back_fifth_fa_inning      | integer    | null: false                     |
| back_sixth_fa_inning      | integer    | null: false                     |
| back_seventh_fa_inning    | integer    | null: false                     |
| back_eighth_fa_inning     | integer    | null: false                     |
| back_ninth_fa_inning      | integer    | null: false                     |
| back_first_sa_inning      | integer    | null: false                     |
| back_second_sa_inning     | integer    | null: false                     |
| back_third_sa_inning      | integer    | null: false                     | 
| back_fourth_sa_inning     | integer    | null: false                     |
| back_fifth_sa_inning      | integer    | default: false, null: false     |
| back_sixth_sa_inning      | integer    | default: false, null: false     |
| back_seventh_sa_inning    | integer    | default: false, null: false     |
| back_eighth_sa_inning     | integer    | default: false, null: false     |
| back_ninth_sa_inning      | integer    | null: false                     |
| back_comment              | string     |                                 |
| user                      | references | null: false, foreign_key: true  |
| match                     | references | null: false, foreign_key: true  |


### Association

- belongs_to :user
- belongs_to :match



## firsts テーブル

| Column              | Type          | Options     |
| --------------------| --------------|------------ |
| first_name_id       | integer       | null: false |
| first_position_id   | integer       | null: false |
| match               | references    | null: false |

### Association
- belongs_to :member
- belongs_to :match



## seconds テーブル

| Column               | Type          | Options     |
| ---------------------| --------------|------------ |
| second_name_id       | integer       | null: false |
| second_position_id   | integer       | null: false |
| match                | references    | null: false |

### Association
- belongs_to :member
- belongs_to :match



## thirds テーブル

| Column               | Type          | Options     |
| ---------------------| --------------|------------ |
| third_name_id        | integer       | null: false |
| third_position_id    | integer       | null: false |
| match                | references    | null: false |

### Association
- belongs_to :member
- belongs_to :match



## fourths テーブル

| Column               | Type          | Options     |
| ---------------------| --------------|------------ |
| fourth_name_id       | integer       | null: false |
| fourth_position_id   | integer       | null: false |
| match                | references    | null: false |

### Association
- belongs_to :member
- belongs_to :match



## fifths テーブル

| Column               | Type          | Options     |
| ---------------------| --------------|------------ |
| fifth_name_id        | integer       | null: false |
| fifth_position_id    | integer       | null: false |
| match                | references    | null: false |

### Association
- belongs_to :member
- belongs_to :match



## sixths テーブル

| Column               | Type          | Options     |
| ---------------------| --------------|------------ |
| sixth_name_id        | integer       | null: false |
| sixth_position_id    | integer       | null: false |
| match                | references    | null: false |

### Association
- belongs_to :member
- belongs_to :match



## sevenths テーブル

| Column               | Type          | Options     |
| ---------------------| --------------|------------ |
| seventh_name_id      | integer       | null: false |
| seventh_position_id  | integer       | null: false |
| match                | references    | null: false |

### Association
- belongs_to :member
- belongs_to :match



## eighths テーブル

| Column               | Type          | Options     |
| ---------------------| --------------|------------ |
| eighth_name_id      | integer        | null: false |
| eighth_position_id  | integer        | null: false |
| match                | references    | null: false |

### Association
- belongs_to :member
- belongs_to :match



## ninths テーブル

| Column               | Type          | Options     |
| ---------------------| --------------|------------ |
| ninth_name_id      | integer         | null: false |
| ninth_position_id  | integer         | null: false |
| match                | references    | null: false |

### Association
- belongs_to :member
- belongs_to :match
