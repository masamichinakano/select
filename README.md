# README

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
