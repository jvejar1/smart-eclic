class CreateBadSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :bad_selections do |t|
      t.references :question_option_selection, foreign_key: true
      t.boolean :confirmed

      t.timestamps
    end
  end
end
