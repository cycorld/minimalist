class CreateGarrages < ActiveRecord::Migration[5.0]
  def change
    create_table :garrages do |t|
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end