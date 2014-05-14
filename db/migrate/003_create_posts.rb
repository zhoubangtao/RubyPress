class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer  :user,                               null: false
      t.string   :title,                              null: false
      t.text     :content,                            null: false
      t.text     :excerpt,                            null: false
      t.string   :status,         default: "publish", null:false
      t.string   :comment_status, default: "open",    null: false
      t.string   :ping_status,    default: "open"
      t.string   :password
      t.string   :name
      t.text     :to_ping
      t.text     :pinged
      t.datetime :modified
      t.datetime :modified_gmt
      t.text     :content_filtered
      t.integer  :parent
      t.string   :guid
      t.integer  :menu_order
      t.string   :type
      t.string   :mime_type
      t.integer  :comments_count
      t.timestamps
    end
  end
end
