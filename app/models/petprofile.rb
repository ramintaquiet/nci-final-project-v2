class Petprofile < ApplicationRecord
  belongs_to :category
  belongs_to :gender
  belongs_to :user
end
