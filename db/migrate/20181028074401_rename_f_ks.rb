class RenameFKs < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :role_id, :user_role_id
  	rename_column :layout_presets, :role_id, :user_role_id
  end
end
