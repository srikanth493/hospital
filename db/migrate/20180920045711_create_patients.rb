class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.date :dob
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
