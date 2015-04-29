class AddCategoryToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :category, :string
  end
end
