class Favorite < ApplicationRecord
  belongs_to :petprofile
  belongs_to :user
end
