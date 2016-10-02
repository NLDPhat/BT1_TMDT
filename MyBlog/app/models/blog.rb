class Blog < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :Title, presence: true,
                length: { maximum: 200}
    validates :post, presence: true
end
