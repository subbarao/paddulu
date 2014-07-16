class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :store
      t.date :bought_on
      t.references :user, index: true
      t.float :total

      t.timestamps
    end
  end
end
