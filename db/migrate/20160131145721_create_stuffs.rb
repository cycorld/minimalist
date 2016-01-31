class CreateStuffs < ActiveRecord::Migration[5.0]
  def change
    create_table :stuffs do |t|
      t.string :image
      t.string :title
      t.text :content
      t.integer :price
      t.integer :status

      t.timestamps
    end
  end
end
