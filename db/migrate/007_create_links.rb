class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string   :url,         default: ""
      t.string   :name,        default: ""
      t.string   :image,       default: ""
      t.string   :target,      default: ""
      t.string   :description, default: ""
      t.string   :visible,     default: "Y"
      t.integer  :owner,       default: 1
      t.integer  :rating,      default: 0
      t.string   :rel,         default: ""
      t.text     :notes
      t.string   :rss,         default: ""

      t.timestamps
    end
  end
end
