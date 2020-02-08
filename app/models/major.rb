class Major < ApplicationRecord
  belongs_to :institution
  has_many :courses, dependent: :destroy
  has_many :reviews, through: :courses

  accepts_nested_attributes_for :courses,
                                   allow_destroy: true

  validates :majorname, presence: true, uniqueness: true, length: {minimum: 2, maximum: 100}
end
