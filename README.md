# Owners

## Function
- ユーザー管理機能
- プロジェクトの詳細ページ閲覧ページ
- オーナー登録機能
- 過去のプロジェクト閲覧機能（オーナーからのレビューつき）

## DataBase Design

### Required Table
- users table
- projects table
- enries table
- purchases table

### Required column
- #### users table
|column name|type|characteristic|
|:----------:|:-------------:|:-------------------:|
|name|string|null: false, unique: true|
|mail|string|null: false, unique: true|
|password|integer|null: false, unique: true|
|role|integer|null: false, unique: true|

- ##### Association
  has_many :projects  
  has_many :entries  
  has_many :purchases
- #### projects table
|column name|type|characteristic|
|:----------:|:--------:|:--------:|
|area|string|null: false|
|price|integer|null: false|
|title|string|null: false|
|main_image|string|null: false|
|main_content|text|null: false|
|sub_content|text|null: false|
|latitude|float|null: false|
|longitude|float|null: false|
|user_id|integer|null: false, foreign_key: true|

- ##### Association
  belongs_to :user  
  has_one :entry  
  has_one :purchase

- #### entries table
|column name|type|characteristic|
|:-------------:|:------------:|:--------------:|
|price|integer|null: false|
|quantity|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|project_id|integer|null: false, foreign_key: true|

- ##### Association
  belongs_to :user  
  belongs_to :project  
  has_one :purchase

- #### purchases table
|column name|type|characrteistic|
|:--------------:|:-------------------:|:------------------:|
|name|string|null:false|
|mail|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|project_id|integer|null: false, foreign_key: true|
|entry_id|integer|null: false, foreign_key: true|
- ##### Association
  belongs_to :user  
  belongs_to :project  
  belongs_to :entry
