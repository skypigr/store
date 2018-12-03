class Order < ApplicationRecord
    has_many :lineitems, dependent: :destroy
    PAYMENT_TYPES = ["Check", "Credit Card", "Venmo", "Paypal"]

    validates :name, :address, :email, presence:true
    validates :paytpye, inclusion:  PAYMENT_TYPES
end
