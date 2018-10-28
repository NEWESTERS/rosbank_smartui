class LayoutController < ApplicationController
	def add
		@layout = Layout.new({ :structure => params[:structure] })

		if params.has_key?(:user)
			User.find_by_id(params[:user]).update({ :layout_id => @layout.id })
		end

		if params.has_key?(:preset)
			LayoutPreset.find_by_id(params[:preset]).update({ :layout_id => @layout.id })
		end
	end

	def generator
		@user = params[:user]
		@preset = params[:preset]
	end
end
