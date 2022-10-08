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

- has_many :roots
- has_many :comments
- has_many :goods


## rootsテーブル

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
| root               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :root


## goodsテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| like               | string     | null: false                    |
| user               | references | null: false, foreign_key: true |
| order              | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :root

