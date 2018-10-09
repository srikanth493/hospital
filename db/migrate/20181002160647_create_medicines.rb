class CreateMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :medicines do |t|
      t.string :name
      t.integer :number_of_tablets
      t.float :cost
      t.date :expiry_date

      t.timestamps
    end
  end
end
