class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.float :interest_rate, precision: 4, scale: 2
      t.float :amount
      t.integer :term
      t.date :request_date

      t.timestamps
    end
  end
end
