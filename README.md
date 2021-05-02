##usersテーブル

| Column     | type      | option                   |
| ---------  | --------- | -------------------------|
| email      | string    | null: false              |
| password   | string    | null: false              |
| name       | string    | null: false              |
| profile    | text      | null: false              |
| occupation | text      | null: false              |
| position   | text      | null: false              |

##association

-has_many :prototypes
-has_many :comment


##prototypesテーブル

| Column     | type      | option                   |
| ---------  | --------- | -------------------------|
| title      | string    | null: false              |
| catch_copy | text      | null: false              |
| concept    | text      | null: false              |
| image      |           | ##ActiveStorageで実装##   |
| user       | reference | null: false              |

##association
- has_many :comments
- belongs_to :users

##commentsテーブル

| Column     | type      | option                   |
| ---------  | --------- | -------------------------|
| text       | text      | null: false              |
| user       | reference |                          |
| concept    | reference |                          |

##association
- has_many :users
- has_many :prototypes

