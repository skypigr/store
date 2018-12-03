class AddOrderToLineitems < ActiveRecord::Migration[5.2]
  def change
    add_reference :lineitems, :order, foreign_key: true
  end
end
