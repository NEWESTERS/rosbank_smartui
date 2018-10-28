class LayoutPreset < ApplicationRecord
	belongs_to :business_segment
	belongs_to :layout
	belongs_to :user_role
end
