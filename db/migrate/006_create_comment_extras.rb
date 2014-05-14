class CreateCommentExtras < ActiveRecord::Migration
  def change
    create_table :comment_extras do |t|
      t.integer :comment_id,            null: false
      t.string  :key,       limit: 255
      t.text    :value
    end
  end
end
