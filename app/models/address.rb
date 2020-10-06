class Address < ApplicationRecord
  belongs_to :order
  with_options presence: true do
    validates :post_code
    validates :prefecture
    validates :city
    validates :block
    validates :building
    validates :phone_number
  end
end
