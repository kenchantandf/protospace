# DataBase
***

# <u> 1. Usersテーブル </u>

| column   | type    | option         |
|:---------|:--------|:---------------|
| id       | integer | null: false    |
| name     | string  | null: false    |
| email    | string  | null: false    |
| password | string  | null: false    |
| avator   | string  | null: false    |
| member   | string  | null: false    |
| profile  | text    | null: false    |
| work     | string  | null: false    |

### Association
- has_many :prototypes
- has_many :likes
- has_many :comments

***

# <u> 2. Prototypesテーブル </u>

| column     | type       | option         |
|:-----------|:-----------|:---------------|
| id         | integer    | null: false    |
| image_title| string     | null: false    |
| catch_copy | string     | null: false    |
| concept    | text       | null: false    |
| user_id    | integer    | null: false    |


### Association
- belongs_to :user
- has_many :comments
- has_many :likes
- has_many :images

***

# <u> 3. Commentsテーブル </u>
| column       | type        | option         |
|:-------------|:------------|:---------------|
| id           | integer     | null: false    |
| text         | text        |                |
| prototype_id | integer     |                |
| user_id      | integer     |                |

### Association
- belongs_to :user
- belongs_to :prototype

***

# <u> 4. Likesテーブル </u>

| column       | type        | option         |
|:-------------|:------------|:---------------|
| id           | integer     |                |
| prototype_id | integer     |                |
| user_id      | integer     |                |

### Association
- belongs_to :prototype
- belongs_to :user

# <u> 5. CapturedImagesテーブル </u>

| column       | type        | option         |
|:-------------|:------------|:---------------|
| id           | integer     |                |
| prototype_id | integer     |                |
| image        | string      |                |

### Association
- belongs_to :prototype
