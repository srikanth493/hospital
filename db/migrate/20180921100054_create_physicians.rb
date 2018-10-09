class CreatePhysicians < ActiveRecord::Migration[5.2]
  def change
    create_table :physicians do |t|
      t.string :name
      t.integer :age
      t.integer :expeeriance

      t.timestamps
    end
  end
end
