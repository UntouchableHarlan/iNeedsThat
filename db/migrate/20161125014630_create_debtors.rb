class CreateDebtors < ActiveRecord::Migration[5.0]
  def change
    create_table :debtors do |t|
      t.string :name
      t.float :amount

      t.timestamps
    end
  end
end
