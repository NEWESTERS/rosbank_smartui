class CreateLayoutPresets < ActiveRecord::Migration[5.2]
  def change
    create_table :layout_presets do |t|
      t.belongs_to :business_segment, index: true
      t.belongs_to :layout, index: true
      t.belongs_to :role, index: true

      t.timestamps
    end
  end
end
