class Institution < ApplicationRecord
  # institutions are many side of one-to-many associations
    has_many :majors, dependent: :destroy
    has_many :courses, through: :majors
    has_many :reviews, through: :courses

  # can have one logo
    has_one_attached :logo

    accepts_nested_attributes_for :majors,
                                   allow_destroy: true
                            

    validates :name, presence: true, uniqueness: true, length: {minimum: 2, maximum: 100}
    validates :city, presence: true, length: {minimum: 2, maximum: 100} 
    validates :country, presence: true, length: {minimum: 2, maximum: 25}  
end
