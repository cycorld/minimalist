class AddGarrageIdToStuff < ActiveRecord::Migration[5.0]
  def change
    add_column :stuffs, :garrage_id, :integer
  end
end
