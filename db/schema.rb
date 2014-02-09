# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140209213513) do

  create_table "authors", :force => true do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "book_users", :force => true do |t|
    t.integer "book_id"
    t.integer "user_id"
  end

  create_table "books", :force => true do |t|
    t.string  "title"
    t.string  "isbn"
    t.string  "genre"
    t.integer "author_id"
  end

  create_table "friends", :force => true do |t|
    t.integer "friend_id"
    t.integer "user_id"
  end

  create_table "reviews", :force => true do |t|
    t.string  "subject"
    t.text    "body"
    t.integer "user_id"
    t.integer "book_id"
  end

  create_table "users", :force => true do |t|
    t.string "username"
    t.string "email"
  end

end
