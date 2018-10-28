class User < ApplicationRecord
	belongs_to :layout
	belongs_to :business_segment, optional: true
	belongs_to :user_role
end
