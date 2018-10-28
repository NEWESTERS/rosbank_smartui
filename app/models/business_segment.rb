class BusinessSegment < ApplicationRecord
	has_many :users
	has_many :uimodule_stats
	has_many :layout_presets
	has_many :user_role
end
