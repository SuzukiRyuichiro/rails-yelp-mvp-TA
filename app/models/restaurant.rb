class Restaurant < ApplicationRecord
    ALLOWED_CATEGORY = %w(chinese italian japanese french belgian)

    validates :name, presence: true
    validates :address, presence: true
    validates :category, presence: true
    validates :category, :inclusion=> { :in => ALLOWED_CATEGORY }

    has_many :reviews, dependent: :destroy
end
