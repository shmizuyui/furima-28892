class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_one :order
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

  validates :price, numericality: { message: 'is invalid. Input half-width number.'}
  validates :price, inclusion: {in: 300..9999999, message: 'Out of setting range' }

  with_options numericality: { other_than: 1, message: 'Select' } do
    validates :category_id
    validates :condition_id
    validates :postage_payer_id
    validates :prefecture_id
    validates :handing_time_id
  end
end
