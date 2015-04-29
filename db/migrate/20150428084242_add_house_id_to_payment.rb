class AddHouseIdToPayment < ActiveRecord::Migration
  def change
  	add_column :payments, :house_id, :integer
  	add_index :payments, :house_id
  end
end
