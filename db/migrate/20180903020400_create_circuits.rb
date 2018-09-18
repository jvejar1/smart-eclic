class CreateCircuits < ActiveRecord::Migration[5.1]
  def change
    create_table :circuits do |t|
      t.text :name
      t.references :prelab, foreign_key: true

      t.timestamps
    end
  end
end
