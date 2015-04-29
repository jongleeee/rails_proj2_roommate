class HousesController < ApplicationController
  def index
  	@houses = House.all
  end

  def show
  	id = params[:id].to_i
  	@payments = Payment.where(house_id:id).all
  end

  def update
  	id = params[:house_id].to_i
    current_user.house = House.where(id:id).first
    current_user.save
    redirect_to "/"
  end

  def new
    @house = House.new
  end

  def create
    @house = House.create(house_params)
    if @house.save
      redirect_to houses_path
    else
      render "new"
    end
  end

  def house_params
    params.require(:house).permit(:name) #Returns a hash that was the value of "name" and "email" from the value of "user" in params.
  end

end
