class Address < ApplicationRecord
  belongs_to :order
  with_options presence: true do
    validates :post_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }
    validates :prefecture
    validates :city
    validates :block
    validates :building
    validates :phone_number, format: { with: /\A[0-9]+\z/}
  end
end
