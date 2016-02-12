class AddImageToGarrage < ActiveRecord::Migration[5.0]
  def change
    add_column :garrages, :image, :string
  end
end
