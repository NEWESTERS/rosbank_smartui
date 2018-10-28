class SegmentTypeRename < ActiveRecord::Migration[5.2]
  def change
  	rename_column :business_segments, :type, :name
  end
end
