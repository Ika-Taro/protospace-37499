class Prototype < ApplicationRecord

  validates :title, presence: true
  validates :catcg_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true

  belongs_to :user
  has_one_attached :image
end
