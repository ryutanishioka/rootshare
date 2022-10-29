# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | -------| ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
| bike               | string |                           |
| profile            | text   |                           |
| image              | text   |                           |
| introduction       | text   |                           |

### Association

- has_many :ways
- has_many :comments
- has_many :goods


## waysテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| content            | text       | null: false                    |
| share              | text       |                                |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_many :goods


## commentsテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| text               | text       | null: false                    |
| user               | references | null: false, foreign_key: true |
| way                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :way


## goodsテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| way                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :way

