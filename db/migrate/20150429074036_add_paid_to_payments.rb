class AddPaidToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :paid, :string
  end
end
