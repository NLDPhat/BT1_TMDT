class Blog < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :Title, presence: true,
                length: { maximum: 100 }
    validates :post, presence: true
end
