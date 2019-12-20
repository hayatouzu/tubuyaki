# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|

## Association
- has_many :tweets
- has_many :comments

## tweetsテーブル

|Column|Type|Options|
|------|----|-------|
|text|string|
|image|string|
|user_id|integer|null: false, foreign_key: true|

## Association
- has_many :comments
- belongs_to :user

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user|references|foreign_key: true|
|tweet|references|foreign_key:true|


## Association
- belongs_to :tweet
- belongs_to :user

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
