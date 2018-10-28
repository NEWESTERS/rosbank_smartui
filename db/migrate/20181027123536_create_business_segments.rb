class CreateBusinessSegments < ActiveRecord::Migration[5.2]
  def change
    create_table :business_segments do |t|
      t.string :type
      t.string :min_revenue

      t.timestamps
    end
  end
end
