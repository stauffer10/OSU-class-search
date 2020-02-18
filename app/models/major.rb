class Major < ApplicationRecord
  belongs_to :institution
  has_many :courses, dependent: :destroy
  has_many :reviews, through: :courses

  accepts_nested_attributes_for :courses,
                                   allow_destroy: true

  
  # VALIDATIONS
  validates :majorname, 
    presence: true, 
    length: {minimum: 2, maximum: 100}, 
    uniqueness: {scope: :institution_id, case_sensitive: false, message: "already exists for this institution"}


end
