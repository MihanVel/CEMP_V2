class Product < ApplicationRecord
    validates :title, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0 }

    has_many_attached :images
end
