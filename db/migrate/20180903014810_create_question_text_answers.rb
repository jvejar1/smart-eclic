class CreateQuestionTextAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :question_text_answers do |t|
      t.integer :grade
      t.string :answer_text
      t.references :question, foreign_key: true
      t.references :user_prelab, foreign_key: true

      t.timestamps
    end
  end
end
