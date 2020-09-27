class Member < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :style


  belongs_to :user
  belongs_to :order
  has_one_attached :image

  validates :image, :name, :age, :style_id, :number, presence: true
  validates :style_id, numericality: { other_than: 0 }

end
