class Review < ActiveRecord::Base
    # rails5から、belongs_toに対して、required:trueがデフォルトで設定されているからみたいです。
    belongs_to :course, optional: true
    validates :reviews_content, presence: true, length: {minimum: 3, maximum: 500}
    #validates :course_id, presence: true
end