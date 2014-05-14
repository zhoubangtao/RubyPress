class CreatePostExtras < ActiveRecord::Migration
  def change
    create_table :post_extras do |t|
      t.integer :post_id
      t.string  :key
      t.string  :value
    end
  end
end
