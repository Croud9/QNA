class AddBestToAnswers < ActiveRecord::Migration[6.1]
  def change
    change_table :answers do |t|
      t.boolean :best, default: false, null: false
    end
  end
end
