class PaymentsController < ApplicationController
  def new
  	@house = House.find params[:house_id]
  	@payment = @house.payments.build
  end

  def create
  	@house = House.find params[:house_id]
  	@payment = @house.payments.build payment_params
    @payment.paid = ""
  	if @payment.save
  		redirect_to house_payments_path(params[:house_id])
  	else
  		render "new"
    end
  end

  def index
    @house_id = params[:house_id]
    @house_name = House.where(id:@house_id).first.name
    @houses = Payment.where(house_id:@house_id).where(category:"house").all
    @bills = Payment.where(house_id:@house_id).where(category:"bill").all
    @grocerys = Payment.where(house_id:@house_id).where(category:"grocery").all
    @etcs = Payment.where(house_id:@house_id).where(category:"etc").all

    @house_total = 0
    @bill_total = 0
    @grocery_total = 0
    @etc_total = 0

    @houses.each do |p|
      @house_total += p.amount
    end
    
    @bills.each do |p|
      @bill_total += p.amount
    end

    @grocerys.each do |p|
      @grocery_total += p.amount
    end

    @etcs.each do |p|
      @etc_total += p.amount
    end

    render "index"
  end

  def update
    id = params[:payment_id]
    paid_list = Payment.where(id:id).first
    list = paid_list.paid
    if list == ""
      list.concat(current_user.name)
    else
      list.concat(", ")
      list.concat(current_user.name)
    end
    paid_list.save
    redirect_to :back
  end

  private

  def payment_params
    params.require(:payment).permit(:name, :amount, :category) #Returns a hash that was the value of "name" and "email" from the value of "user" in params.
  end
  
end
