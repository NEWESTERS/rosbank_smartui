class Layout < ApplicationRecord
	has_many :users
	has_many :layout_presets
end
