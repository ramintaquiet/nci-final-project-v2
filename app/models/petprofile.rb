class Petprofile < ApplicationRecord
  belongs_to :category
  belongs_to :gender
  belongs_to :user
  has_one_attached :image
  has_many :favoritepets, dependent: :destroy
end
