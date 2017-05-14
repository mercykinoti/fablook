class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.string :answer
      t.references :style, foreign_key: true

      t.timestamps
    end
  end
end
