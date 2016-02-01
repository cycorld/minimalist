class AddUserIdToGarrage < ActiveRecord::Migration[5.0]
  def change
    add_column :garrages, :user_id, :integer
  end
end
