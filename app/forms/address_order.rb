class AddressOrder

   include ActiveModel: :ActiveModel
   attr_accessor :post_code, :prefecture, :city, :block, :building, :phone_number, :user_id, :item_id

  with_options presence: true do
    validates :post_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }
    validates :phone_number, format: { with: /\A[0-9]+\z/}
  end

  validates :prefecture, numericality: { other_than: 0, message: "can't be blank" }

  with_options presence: true do
    validates :city
    validates :block
    validates :building
  end

  def save
    Order.create(user_id: user.id, item_id: item.id)
    Address.create(post_code: post_code, prefecture: prefecture, city: city, block: block, building: building, phone_number: phone_number, order_id: order.id)
  end
end