class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find params[:id]
  	@house = House.where(id:@user.house_id).first
  	@house_name = @house.name
  end
end
