class Category < ApplicationRecord
    has_many :petprofiles, class_name: "petprofile", foreign_key: "reference_id"
end
