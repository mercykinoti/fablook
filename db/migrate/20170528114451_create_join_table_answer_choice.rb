class CreateJoinTableAnswerChoice < ActiveRecord::Migration[5.0]
  def change
    create_join_table :answers, :choices do |t|
      # t.index [:answer_id, :choice_id]
      # t.index [:choice_id, :answer_id]
    end
  end
end
