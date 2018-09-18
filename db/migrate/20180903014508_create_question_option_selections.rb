class CreateQuestionOptionSelections < ActiveRecord::Migration[5.1]
  def change
    create_table :question_option_selections do |t|
      t.references :user_prelab, foreign_key: true
      t.references :question_option, foreign_key: true

      t.timestamps
    end
  end
end
