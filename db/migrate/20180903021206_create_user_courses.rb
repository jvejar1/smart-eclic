class CreateUserCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :user_courses do |t|
      t.integer :grade
      t.references :course, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :role

      t.timestamps
    end
  end
end
