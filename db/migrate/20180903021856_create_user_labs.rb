class CreateUserLabs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_labs do |t|
      t.references :user, foreign_key: true
      t.references :lab, foreign_key: true
      t.integer :class_grade
      t.integer :report_grade

      t.timestamps
    end
  end
end
