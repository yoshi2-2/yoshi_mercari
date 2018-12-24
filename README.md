## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false|
|nickname|string|null: false|

### Association
- has_many :items
- has_many :comments
- has_many :orders
- has_one :address
- has_one :credit_card
- has_one :users-info

## users-infoテーブル

|Column|Type|Options|
|------|----|-------|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birth_year|integer|-------|
|birth_month|integer|-------|
|birth_day|integer|-------|
|phone_number|integer|-------|
|avatar|string|-------|
|introduction|text|-------|

### Association
- belongs_to :user

## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|postal_code|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|street_number|string|null: false|
|building_name|string|-------|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user


## creditcardsテーブル
|Column|Type|Options|
|------|----|-------|
|number|integer|null: false|
|cvc|integer|null: false|
|exp_year|integer|null: false|
|exp_month|integer|null: false|
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item

## ordersテーブル
|Column|Type|Options|
|------|----|-------|
|status|integer|null: false|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|integer|null: false|
|description|text|-------|
|condition|string|null: false|
|size|string|-------|
|shipping_date|integer|null: false|
|shipping_fee|integer|null: false|
|shipping_way|string|null: false|
|shipping_from|string|null: false|
|user_id|references|null: false, foreign_key: true|
|brand_id|references|null: false, foreign_key: true|
|bottom_category_id|references|null: false, foreign_key: true|

### Association
- has_many :images
- has_many :comments
- belongs_to :user
- belongs_to :bottom_category
- belongs_to :brand
- has_one :order

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :item

## bottom_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|mid_caregory_id|references|null: false,foreign_key: true|

### Association
- has_many :items
- belongs_to :mid_category

## mid_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|top_category_id|references|null: false,foreign_key: true|

### Association
- has_many :bottoms_categories
- belongs_to :top_category

## top_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :mid_categories

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :items

