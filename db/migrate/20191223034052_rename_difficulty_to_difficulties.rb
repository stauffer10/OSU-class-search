class RenameDifficultyToDifficulties < ActiveRecord::Migration[5.2]
  def change
    rename_table :difficulty, :difficulties #この行を追加！
  end
end
