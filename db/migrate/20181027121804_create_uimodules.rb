class CreateUimodules < ActiveRecord::Migration[5.2]
  def change
    create_table :uimodules do |t|
      t.string :name
      t.string :category
      t.string :look

      t.timestamps
    end
  end
end
