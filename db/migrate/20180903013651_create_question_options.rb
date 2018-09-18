class CreateQuestionOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :question_options do |t|
      t.text :option_text
      t.references :question, foreign_key: true
      t.boolean :correct

      t.timestamps
    end
  end
end
