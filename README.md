# README

## アプリケーション名 
- select-9

## アプリケーション概要
- 1.チーム管理機能
- 2.野球チームの監督または代表者が選手の管理ができる。
- 3.スターティングメンバーをどこでも事前に設定できる。
- 4.試合結果の管理ができる。
- 5.試合予定を管理できる。
- 6.試合の出席確認を把握できる。

## URL
https://select-9.herokuapp.com/

## テストアカウント
- email：
- password：


## 利用方法
- 1.新規会員登録またはログイン（google or facebookでのログインも可）
- 2.選手登録：各項目を入力し選手を9人以上登録する。
- 3.選手一覧：登録した選手の一覧を閲覧できる。
- 4.選手詳細：一覧表示されている選手をタップするとその選手の詳細を閲覧できる。
- 5.選手編集：詳細画面から編集ボタンをタップすることで編集画面に遷移し選手の内容を編集できる。
- 6.選手削除：詳細画面から削除ボタンをタップすることで選手を削除することができる。
- 7.スタメン設定：スターティングメンバーを決めて保存しておくことができる。（対戦相手の入力と日程の入力は必須）
- 8.スタメン確認：スタメン設定で保存したものを一覧表示している。
- 9.検索機能：スタメン確認画面で対戦相手や日程を入力することで保存したスタメンを検索することができる。
- 10.スタメン詳細：スタメン確認画面で表示されているスタメンをタップすることで詳細を表示できる。
- 11.スタメン削除：スタメン詳細画面で削除ボタンをタップすることで保存したスタメンを削除できる。
- 12.試合開始：スタメン詳細画面で「先攻で試合する」と「後攻で試合する」というボタンがありどちらかをタップする。
- 13.試合画面：「先攻で試合する」と「後攻で試合する」のどちらかをタップするとスコア入力欄、スターティングメンバー詳細、コメント欄が表示される。
- 14.試合結果保存：試合画面でスコアとコメントを入力後、保存ボタンをタップし保存する。（コメントは無くても保存可）
- 15.試合結果：試合結果を一覧表示している。試合結果には勝敗の表示もされている。
- 16.検索機能：試合結果一覧でで対戦相手や日程を入力することで保存した試合結果を検索することができる。
- 17.試合詳細：過去の試合の詳細を閲覧することができる。
- 18.試合削除：試合詳細画面の削除ボタンをタップすることで削除できる。
- 19.試合予定登録：今後の試合予定や詳細、コメントを保存できる。
- 20.試合予定詳細：試合予定一覧から一つの試合をタップすることでその試合の詳細が閲覧できる。
- 21.試合予定詳細編集：試合予定詳細から編集をタップすることでその試合予定を編集することができる。
- 22.試合予定削除：試合予定詳細から削除をタップすることでその試合を削除することができる。
- 23.出席確認機能：試合予定一覧から一つの試合予定をタップするとその試合の出席者一覧を閲覧できる。
- 24.出席機能機能：試合予定詳細から出席するをタップすることでその試合に出席することができる。
- 25.出席コメント機能：試合予定詳細からコメント一覧をタップすることでその試合に出席する選手のコメント一覧を閲覧することができる。
- 26.出席者詳細機能：出席者コメント一覧から一つのコメントをタップすることでその選手の詳細画面に遷移する。
- 27.出席者編集機能：出席者詳細から編集をタップするとその出席情報を編集することができる。
- 28.出席者削除機能：出席者詳細から削除をタップするとその出席情報を削除することができる。



## 制作背景と目指した課題解決
- 前提：私は、小学２年生から大学４回生まで現役のプレーヤーとして野球を続け、大学卒業後もクラブチームのコーチと草野球チームでの選手として活動しています。その為、野球関係者の知人が多く様々な意見を聞きこのアプリケーションを作成しました。このアプリケーションは、小・中学生のクラブチームや子供会、草野球の監督をターゲットとしています。

## 課題①
- 課題：スターティングメンバーを決める際、用紙に記入する為、書き直しなどの無駄があり現地で記述するなど思いついた時に記載できない。
- 解決機能：スターティングメンバーを事前に設定できることでいつでもどこでも思いついた時に保存、管理が出来る。また、正規の用紙に記述する際、記述ミスが軽減され運営費の削減とペーパーレスにも繋がる。
<img src=4c8c4b56c2818ddb84d2d2ea974244b9.gif>


## 課題②
- 課題：小中学生のクラブチームや子供会の監督をされている方は９９％がボランティアであり休の日を利用してチームの運営を行っており負担が大いにあるにもかかわらず試合に勝たないといけないプレッシャーもある。
- 解決機能：過去の試合結果や当時のメンバーの内容を気軽に閲覧できるため、監督や代表者の本職での隙間時間や休憩中に二度目の対戦相手に対して対策を立てることができる。

## 課題③
- 課題：試合結果は未だスコアブックという試合内容を記載する分厚いノートみたいなものに手書きで記載しているが、野球ではスコアブックに載らないエラーは出来事が多々あるが忘れてしまうことがあり、スコアブックを持ち歩いたり見る手間も無駄である。
- 解決機能：スコアブックに載らないエラーや内容を保存しておくことでミーティングや振り返り、その後の練習メニューの組み立てがしやすくなり生産性が上がりチームの強化に繋がる。

## 課題④
- 課題：運営側はボランティアでありながら選手の出席確認や当日の連絡事項も管理しなければならない状況でありラインを使用しているチームが多いがラインではチャット内で別の話になってしまい重要な情報がわかりにくい。
- 解決機能：試合予定に出席確認かつコメント機能ができることによりラインでは重要な情報を見分けなければならないが、この機能を使用することで一目で出席人数の把握ができ、コメント機能で「午前中のみ出席」などのイレギュラーにも対応でき運営側の負担軽減に繋がる。




## ER図
<img src=https://i.gyazo.com/75e1f2bdfdb8b76cd989fd306a05f092.png, width="60%">

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
