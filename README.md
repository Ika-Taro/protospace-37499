## users table

| Column             | Type  | Option              |
| ------------------ | ----- | ------------------- |
| user               | sting | null: false, unique |
| encrypted_password | sting | null: false         |
| name               | sting | null: false         |
| profile            | text  | null: false         |
| occupation         | text  | null: false         |
| position           | text  | null: false         |

### Association
- has_many :prototypes
- has_many :comments

## prototypes table

| Column     | Type       | Option                   |
| ---------- | ---------- | ------------------------ |
| title      | sting      | null: false              |
| catch_copy | text       | null: false              |
| concept    | text       | null: false              |
| user       | references | null: false, foreign key |

### Association
- has_many :comments
- belongs_to :user

## comments table

| Column    | Type       | Option                   |
| --------- | ---------- | ------------------------ |
| content   | text       | null: false              |
| prototype | references | null: false, foreign key |
| user      | references | null: false, foreign key |

### Association
- belongs_to :user
- belongs_to :prototype