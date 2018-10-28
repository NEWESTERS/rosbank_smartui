class CreateUimoduleStats < ActiveRecord::Migration[5.2]
  def change
    create_table :uimodule_stats do |t|
      t.integer :segment_actuality
      t.integer :role_actuality
      t.belongs_to :module, index: true
      t.belongs_to :business_segment, index: true

      t.timestamps
    end
  end
end
