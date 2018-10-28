class ModuleFkRename < ActiveRecord::Migration[5.2]
  def change
  	rename_column :uimodule_stats, :module_id, :uimodule_id
  end
end
