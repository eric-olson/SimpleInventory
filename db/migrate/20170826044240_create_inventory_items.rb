class CreateInventoryItems < ActiveRecord::Migration[5.1]
  def change
    create_table :inventory_items do |t|
      t.string :name
      t.text :description
      t.integer :tag_id

      t.timestamps
    end
  end
end
