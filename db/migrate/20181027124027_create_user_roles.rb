class CreateUserRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_roles do |t|
      t.string :name
      t.belongs_to :business_segment, index: true

      t.timestamps
    end
  end
end
