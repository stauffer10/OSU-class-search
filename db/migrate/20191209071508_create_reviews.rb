class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :reviews_content
      t.timestamps
    end
  end
end
