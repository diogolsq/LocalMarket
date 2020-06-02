class ChangeRoleToSellerRoleOnUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :seller, :boolean, default: false, null: false
  end
end
