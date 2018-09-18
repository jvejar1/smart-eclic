class CreatePrelabQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :prelab_questions do |t|
      t.references :prelab, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
