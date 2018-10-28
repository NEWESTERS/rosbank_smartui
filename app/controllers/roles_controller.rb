class RolesController < ApplicationController
  def list
  	@roles = UserRole.all
  end
end
