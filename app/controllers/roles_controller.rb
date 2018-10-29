class RolesController < ApplicationController
  def list
  	@users = User.all
  end
end
