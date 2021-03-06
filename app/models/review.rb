class Review < ActiveRecord::Base
    # rails5から、belongs_toに対して、required:trueがデフォルトで設定されているからみたいです。
    belongs_to :course
    validates :reviews_content, presence: true, length: {minimum: 10, maximum: 2000}
    validates :difficulty, presence: true
    validates :benefit, presence: true
    validates :time_spent, presence: true
end