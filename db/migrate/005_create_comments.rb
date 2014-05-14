class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer  :post_id,      default: 0
      t.string   :author
      t.string   :author_email, default: ""
      t.string   :author_url,   default: ""
      t.string   :author_ip,    default: ""
      t.text     :content
      t.integer  :karma,        default: 0
      t.string   :approved,     default: 1
      t.string   :agent,        default: ""
      t.string   :type,         default: ""
      t.string   :parent,       default: 0
      t.integer  :user_id,      default: 0
      t.datetime :create_at
      t.datetime :create_at_gmt
    end
  end
end
