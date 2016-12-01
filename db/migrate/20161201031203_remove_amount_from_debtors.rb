class RemoveAmountFromDebtors < ActiveRecord::Migration[5.0]
  def change
    remove_column :debtors, :amount, :float
    add_column :debtors, :amount, :integer
  end
end
