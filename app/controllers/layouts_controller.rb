class LayoutsController < ApplicationController
  def index
    if current_user
        if current_user.house == nil
            redirect_to houses_path
        else
       
      		@house_id = current_user.house_id
        	house = Payment.where(house_id:@house_id).where(category:"house").all
        	bill = Payment.where(house_id:@house_id).where(category:"bill").all
        	grocery = Payment.where(house_id:@house_id).where(category:"grocery").all
        	etc = Payment.where(house_id:@house_id).where(category:"etc").all

        	@house_count = house.count
        	@bill_count = bill.count
        	@grocery_count = grocery.count
        	@etc_count = etc.count

        	@house_total = 0
        	@bill_total = 0
        	@grocery_total = 0
        	@etc_total = 0

        	house.each do |p|
        		@house_total += p.amount
        	end
        	
        	bill.each do |p|
        		@bill_total += p.amount
        	end

        	grocery.each do |p|
        		@grocery_total += p.amount
        	end

        	etc.each do |p|
        		@etc_total += p.amount
        	end

      		render "main"
        end
    else
    	render "index"
    end
  end
end
