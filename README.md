# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# テーブル設計

## users テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ------------|
| nickname        | string | null: false |
| mail            | string | null: false |
| password        | string | null: false |
| first_name      | string | null: false |
| last_name       | string | null: false |
| first_name_kana | string | null: false |
| last_name_kana  | string | null: false |
| birth_date      | date   | null: false |

### Association

- has_many :items
- has_many :purchases

## items テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user_id       | references | null: false, foreign_key: true |
| description   | text       | null: false                    |
| category      | integer    | null: false                    |
| condition     | integer    | null: false                    |
| postage_payer | integer    | null: false                    |
| prefecture    | integer    | null: false                    |
| handing_time  | integer    | null: false                    |
| price         | integer    | null: false                    |

### Association

- belongs_to :user
- has_one :purchase

## purchases テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item

## adresses テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| post_code    | string     | null: false                    | 
| prefecture   | integer    | null: false                    |
| city         | string     | null: false                    |
| block        | string     | null: false                    |
| building     | string     | null: false                    |
| phone_number | integer    | null: false                    |
| purchase     | references | null: false, foreign_key: true |

### Association

- belongs_to :purchase