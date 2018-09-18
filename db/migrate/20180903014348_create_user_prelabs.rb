class CreateUserPrelabs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_prelabs do |t|
      t.integer :grade
      t.references :user, foreign_key: true
      t.references :prelab, foreign_key: true

      t.timestamps
    end
  end
end
