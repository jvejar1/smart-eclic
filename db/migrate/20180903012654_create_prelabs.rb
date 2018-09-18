class CreatePrelabs < ActiveRecord::Migration[5.1]
  def change
    create_table :prelabs do |t|
      t.datetime :begin
      t.datetime :end
      t.text :err_explanation
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
