class Difficulty < ApplicationRecord
    belongs_to :course
    validates :difficulty, presence: true
end
