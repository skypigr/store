class CombineItemsInCart < ActiveRecord::Migration[5.2]
  # def change
  # end

  def up
    #for each item in cart
    Cart.all.each do |cart|
      # group the same product together and add up the quantity
      # sums will be a list of ordered pairs of product_ids and quantity
      sums = cart.lineitems.group(:product_id).sum(:quantity)
      # for each group
      sums.each do | product_id, quantity|
        if quantity > 1
          # remove all items
          cart.lineitems.where(product_id: product_id).delete_all
          # replace with single item
          item = cart.lineitems.build(product_id: product_id)
          # set quantity
          item.quantity = quantity
          item.save!
        end
      end
    end
  end
end
