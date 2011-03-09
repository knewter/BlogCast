class CreateTables < ActiveRecord::Migration
  def self.up
    create_table "comments", :force => true do |t|
      t.string   "name"
      t.string   "email"
      t.string   "website"
      t.text     "content"
      t.boolean  "admin"
      t.integer  "post_id"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "comment_type"
      t.string   "permalink"
      t.string   "user_ip"
      t.string   "user_agent"
      t.string   "referrer"
    end

    create_table "drafts", :force => true do |t|
      t.string   "title"
      t.text     "content"
      t.string   "author"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.text     "markdown"
    end

    create_table "posts", :force => true do |t|
      t.string   "title"
      t.text     "content"
      t.boolean  "commentable"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.datetime "posted_at"
      t.string   "author"
      t.text     "markdown"
    end

    create_table "spams", :force => true do |t|
      t.string   "name"
      t.string   "email"
      t.string   "website"
      t.text     "content"
      t.string   "comment_type"
      t.string   "permalink"
      t.string   "user_ip"
      t.string   "user_agent"
      t.string   "referrer"
      t.integer  "post_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "users", :force => true do |t|
      t.string   "name"
      t.string   "initials"
      t.string   "email"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "crypted_password"
      t.string   "persistence_token"
      t.integer  "login_count"
      t.integer  "failed_login_count"
      t.datetime "last_request_at"
      t.datetime "current_login_at"
      t.datetime "last_login_at"
      t.string   "current_login_ip"
      t.string   "last_login_ip"
      t.string   "login"
    end

  end

  def self.down

    drop_table "users"

    drop_table "spams"

    drop_table "posts"

    drop_table "drafts"

    drop_table "comments"
  end
end
