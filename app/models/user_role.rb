class UserRole < ApplicationRecord
	belongs_to :business_segment, optional: true
	has_many :users
end
