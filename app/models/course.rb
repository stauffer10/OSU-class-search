class Course < ApplicationRecord
    # courses are many side of one-to-many associations
    has_many :reviews, dependent: :destroy
    accepts_nested_attributes_for :reviews
    # ex, CS160, the first CS class at OSU 
    validates :coursename, presence: true, length: {minimum: 5, maximum: 50}
    validates :course_content, presence: true, length: {minimum: 10, maximum: 500}  
    #belongs_to :user
end
