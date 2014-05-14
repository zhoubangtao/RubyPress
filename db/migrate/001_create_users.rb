class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :login,        default: "", limit: 60,  null: false # login name
      t.string   :pass,         default: "", limit: 64,  null: false # login password
      t.string   :nickname,     default: "", limit: 50,  null: false # nickname of the user
      t.string   :email,        default: "", limit: 100, null: false
      t.string   :url,          default: "", limit: 100, null: false
      t.string   :activation,   default: "", limit: 60,  null: false
      t.integer  :status,       default: 0,  limit: 11,  null: false
      t.string   :display_name, default: "", limit: 250, null: false
      t.timestamps
    end
  end
end
