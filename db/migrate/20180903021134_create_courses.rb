class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.integer :semester
      t.integer :grade

      t.timestamps
    end
  end
end
