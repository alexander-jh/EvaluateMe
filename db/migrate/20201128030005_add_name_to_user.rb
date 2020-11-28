class AddNameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :Fname, :string
    add_column :users, :Lname, :string
  end
end
