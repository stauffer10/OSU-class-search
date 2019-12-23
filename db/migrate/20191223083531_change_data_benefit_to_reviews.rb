class ChangeDataBenefitToReviews < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :benefit, :string
  end
end
