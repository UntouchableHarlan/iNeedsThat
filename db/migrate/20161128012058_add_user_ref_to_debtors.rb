class AddUserRefToDebtors < ActiveRecord::Migration[5.0]
  def change
    add_reference :debtors, :user, foreign_key: true
  end
end
