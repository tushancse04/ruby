class AddFieldToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :first_name, :string
    add_column :admins, :last_name, :string
    add_column :admins, :address, :string
    add_column :admins, :phone, :string
  end
end
