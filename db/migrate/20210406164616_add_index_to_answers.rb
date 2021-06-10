class AddIndexToAnswers < ActiveRecord::Migration[6.1]
  def change
    add_index :answers, [:question_id, :best], unique: true, where: "best = true"
  end
end
