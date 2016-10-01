class Blog < ApplicationRecord
    belongs_to : user
    validates :Titile, presence: true,
                lenght {maximum: 100}
    validates :pos, presence: true
end
