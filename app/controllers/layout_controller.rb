class LayoutController < ApplicationController
	skip_before_action :verify_authenticity_token

	def add
		json = JSON.parse(request.raw_post)

		@layout = Layout.new({ :structure => json["data"] })
		@layout.save

		if !json["user"].empty?
			User.find_by_id(json["user"]).update({ :layout_id => @layout.id })
			redirect_to root_path
		end

		if !json["preset"].empty?
			LayoutPreset.find_by_id(json["preset"]).update({ :layout_id => @layout.id })
			redirect_to root_path
		end
	end

	def generator
		@user = params[:user]
		@preset = params[:preset]
	end
end
