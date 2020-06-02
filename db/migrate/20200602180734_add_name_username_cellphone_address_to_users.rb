class AddNameUsernameCellphoneAddressToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :cellphone, :integer
    add_column :users, :address, :string

  end
end
