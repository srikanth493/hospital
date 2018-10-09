class CreateJoinTableMedicineBill < ActiveRecord::Migration[5.2]
  def change
    create_join_table :medicines, :bills do |t|
      # t.index [:medicine_id, :bill_id]
      # t.index [:bill_id, :medicine_id]
    end
  end
end
