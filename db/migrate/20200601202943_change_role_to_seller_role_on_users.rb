class ChangeRoleToSellerRoleOnUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :role
    add_column :users, :seller, :boolean, default: false, null: false
  end
end
