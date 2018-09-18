class AddCourseReferenceToActivities < ActiveRecord::Migration[5.2]
  def change
    add_reference :activities, :course, foreign_key: true
  end
end
