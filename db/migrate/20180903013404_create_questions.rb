class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :question_type
      t.text :question_text

      t.timestamps
    end
  end
end
