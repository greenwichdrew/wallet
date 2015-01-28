class CreateDebitCards < ActiveRecord::Migration
  def change
    create_table :debit_cards do |t|
      t.float :deposits
      t.float :withdraws
      t.float :balance

      t.timestamps null: false
    end
  end
end
