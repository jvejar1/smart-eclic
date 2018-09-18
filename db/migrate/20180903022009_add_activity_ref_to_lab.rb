class AddActivityRefToLab < ActiveRecord::Migration[5.1]
  def change
    add_reference :labs, :activity, foreign_key: true
  end
end
