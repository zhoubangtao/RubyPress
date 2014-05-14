class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string  :name,     default: "yes"
      t.string  :value
      t.string  :autoload, default: ""
    end
  end
end
