class CreateUserExtras < ActiveRecord::Migration
  def change
    create_table :user_extras do |t|
      t.integer :user_id
      t.string  :key,    limit: 255
      t.text    :value
    end
  end
end
