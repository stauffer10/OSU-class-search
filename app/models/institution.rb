class Institution < ApplicationRecord
  # institutions are many side of one-to-many associations
    has_many :courses, dependent: :destroy

  # can have one logo
    has_one_attached :logo

    accepts_nested_attributes_for :courses,
                                   allow_destroy: true
                            

    validates :name, presence: true, uniqueness: true, length: {minimum: 2, maximum: 100}
    validates :city, presence: true, length: {minimum: 2, maximum: 100} 
    validates :country, presence: true, length: {minimum: 2, maximum: 25}  
end
