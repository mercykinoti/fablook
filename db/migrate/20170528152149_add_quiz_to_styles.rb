class AddQuizToStyles < ActiveRecord::Migration[5.0]
  def change
    add_reference :styles, :quiz, foreign_key: true
  end
end
