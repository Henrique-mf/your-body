class AddAttributeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :telephone, :string
    add_column :users, :studio, :boolean
    add_column :users, :studio_name, :string
    add_column :users, :register_number, :integer
  end
end
