class Todo < ApplicationRecord
    validates :activity, presence: true
    validates :activity, length: { minimum: 3 }
    validates :activity, length: { maximum: 150 }

end
