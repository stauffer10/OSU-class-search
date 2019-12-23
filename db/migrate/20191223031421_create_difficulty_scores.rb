class CreateDifficultyScores < ActiveRecord::Migration[5.2]
  def change
    create_table :difficulty_scores do |t|
      t.integer :difficulty
      t.integer :course_id

      t.timestamps
    end
  end
end
