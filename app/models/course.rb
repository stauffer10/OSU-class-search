class Course < ApplicationRecord
    # ex, CS160, the first CS class at OSU 
    validates :coursename, presence: true, length: {minimum: 5, maximum: 50}
    validates :course_content, presence: true, length: {minimum: 10, maximum: 500}
end
