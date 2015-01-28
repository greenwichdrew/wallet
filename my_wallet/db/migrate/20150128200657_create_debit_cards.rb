class CreateDebitCards < ActiveRecord::Migration
  def change
    create_table :debit_cards do |t|
      t.float :deposits
      t.float :withdraws

      t.timestamps null: false
    end
  end
end
