class CreateDebitCards < ActiveRecord::Migration
  def change
    create_table :debit_cards do |t|
      t.integer :transaction_number
      t.float :deposits
      t.float :withdraws
      t.float :balance

      t.timestamps null: false
    end
  end
end
