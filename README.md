## usersテーブル
|Column|Type|Options|
|------|----|-------|
|family_name|string|null: false|
|first_name|string|null: false|
|family_kana_name|string|null: false|
|first_kana_name|string|null: false|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|telephone_number|integer||
|birthday|integer||
|profile|text||
|picture|references|foreign_key: true|

### Association
- has_many :pictures, dependent: :destroy
- has_many :picture, foreign_key:picture_id


## picturesテーブル
|Column|Type|Options|
|------|----|-------|
|picture_name|string|null: false, add_index: true|
|discription|text||
|user|references|foreign_key: true|

### Association
- belongs_to :user
- has_many :images
- has_many :comments, dependent: :destroy
- has_many :favorite, dependent: :destroy


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|picture|references|foreign_key: true|
|url|string||
### Association
- belongs_to :picture


## favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|picture|references|foreign_key: true|

### Association
- belongs_to :picture


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|picture|references|foreign_key: true|

### Association
- belongs_to :picture
