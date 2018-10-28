class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :company
      t.belongs_to :role, index: true
      t.belongs_to :layout, index: true
      t.belongs_to :business_segment, index: true

      t.timestamps
    end
  end
end
