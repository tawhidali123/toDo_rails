class Todo < ApplicationRecord
    validates :activity, presence: true
    validates :activity, length: { minimum: 3 }
    validates :activity, length: { maximum: 150 }

    validates :priority, presence: true
    validates :priority, length: { minimum: 1 }
    validates :priority, length: { maximum: 5 }

    

end
