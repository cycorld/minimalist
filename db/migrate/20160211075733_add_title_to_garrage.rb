class AddTitleToGarrage < ActiveRecord::Migration[5.0]
  def change
    add_column :garrages, :title, :string
  end
end
