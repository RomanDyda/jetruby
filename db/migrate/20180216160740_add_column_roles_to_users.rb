class AddColumnRolesToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :role, :string, default: 'guest'
  	end
end