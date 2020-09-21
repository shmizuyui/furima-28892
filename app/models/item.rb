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
    validates :text
    validates :description
    validates :price
  end
  with_options numericality: { other_than: 1 } do
    validates :category
    validates :condition
    validates :postage_payer
    validates :prefecture
    validates :handing_time
  end
end
