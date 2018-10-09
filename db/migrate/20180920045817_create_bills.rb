class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :invoice_no
      t.string :bill_date
      t.float :amount
      t.string :patient_id

      t.timestamps
    end
  end
end
