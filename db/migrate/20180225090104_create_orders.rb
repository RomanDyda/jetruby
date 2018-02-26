class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :user_ids
      t.string :dish_ids
      t.timestamps
    end
  end
end
