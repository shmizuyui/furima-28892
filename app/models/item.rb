class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :postage_payer
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :handing_time
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :text
    validates :description
    validates :price
  end
    validates :category_id, numericality: { other_than: 1, message: "Select" }
    validates :condition_id, numericality: { other_than: 1, message: "Select" }
    validates :postage_payer_id, numericality: { other_than: 1, message: "Select" }
    validates :prefecture_id, numericality: { other_than: 1, message: "Select" }
    validates :handing_time_id, numericality: { other_than: 1, message: "Select" }
end
