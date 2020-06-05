class AddReviewToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :review, :float
  end
end
