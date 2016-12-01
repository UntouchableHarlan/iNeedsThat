class AddDescriptionToDebtors < ActiveRecord::Migration[5.0]
  def change
    add_column :debtors, :description, :string
  end
end
