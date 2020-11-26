class Gender < ApplicationRecord
    has_many :petptofiles, class_name: "petptofile", foreign_key: "reference_id"
end
