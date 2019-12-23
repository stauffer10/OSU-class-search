class RenameDifficultyScoresToDifficulty < ActiveRecord::Migration[5.2]
  def change
    rename_table :difficulty_scores, :difficulty #この行を追加！
  end
end
