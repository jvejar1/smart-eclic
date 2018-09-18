class CreateLabs < ActiveRecord::Migration[5.1]
  def change
    create_table :labs do |t|
      t.date :lab_date

      t.timestamps
    end
  end
end
