# ProtoSpace DB Design

## Table Design

### users Table

| Column Name          | Data Type | Constraints            |
|----------------------|-----------|------------------------|
| email                | string    | NOT NULL, unique       |
| encrypted_password   | string    | NOT NULL               |
| name                 | string    | NOT NULL               |
| profile              | text      | NOT NULL               |
| occupation           | text      | NOT NULL               |
| position             | text      | NOT NULL               |

### prototypes Table

| Column Name     | Data Type   | Constraints                   |
|-----------------|-------------|-------------------------------|
| title           | string      | NOT NULL                      |
| catch_copy      | text        | NOT NULL                      |
| concept         | text        | NOT NULL                      |
| user_id         | references  | NOT NULL, foreign key         |

*Note: Image is implemented using ActiveStorage and thus not included.*

### comments Table

| Column Name     | Data Type   | Constraints                   |
|-----------------|-------------|-------------------------------|
| content         | text        | NOT NULL                      |
| prototype_id    | references  | NOT NULL, foreign key         |
| user_id         | references  | NOT NULL, foreign key         |

## Associations

### users Table
- has_many :prototypes
- has_many :comments

### prototypes Table
- belongs_to :user
- has_many :comments

### comments Table
- belongs_to :user
- belongs_to :prototype