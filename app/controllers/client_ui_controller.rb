class ClientUiController < ApplicationController
  def view
  	@user = User.find_by_id(params[:user_id])

    @layout = JSON.parse(@user.layout.structure.to_json)
  end
end
