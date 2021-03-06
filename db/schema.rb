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

ActiveRecord::Schema.define(:version => 20110301212107) do

  create_table "genres", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "genres", ["name"], :name => "index_genres_on_name", :unique => true

  create_table "link_universes", :force => true do |t|
    t.integer  "link_id"
    t.integer  "universe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "link_words", :force => true do |t|
    t.integer  "link_id"
    t.integer  "word_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managers", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "managers", ["name"], :name => "index_managers_on_name", :unique => true

  create_table "slugs", :force => true do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                     :default => 1, :null => false
    t.string   "sluggable_type", :limit => 40
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "universe_managers", :force => true do |t|
    t.integer  "manager_id"
    t.integer  "universe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "universes", :force => true do |t|
    t.string   "name",                       :null => false
    t.string   "website"
    t.text     "description"
    t.integer  "genre_id",                   :null => false
    t.integer  "manager_id",  :default => 1, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "universes", ["name"], :name => "index_universes_on_name", :unique => true

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "persistence_token"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "words", :force => true do |t|
    t.string   "word",                           :null => false
    t.string   "definition"
    t.integer  "universe_id",                    :null => false
    t.string   "website"
    t.boolean  "is_name",     :default => false
    t.boolean  "is_acronym",  :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
