class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :stuff_id
      t.text :message

      t.timestamps
    end
  end
end
