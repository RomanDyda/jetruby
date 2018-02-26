class CreateSundays < ActiveRecord::Migration[5.1]
  def change
    create_table :sundays do |t|
      t.string :name_of_the_dish
      t.string :description
      t.float :price
      t.timestamps
    end
  end
end