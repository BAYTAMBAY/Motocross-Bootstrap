class Motorcycle < ApplicationRecord
    belongs_to :model
    has_one_attached :picture_id
end
