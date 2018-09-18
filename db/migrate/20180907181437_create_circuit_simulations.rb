class CreateCircuitSimulations < ActiveRecord::Migration[5.2]
  def change
    create_table :circuit_simulations do |t|
      t.references :user_prelab, foreign_key: true
      t.references :circuit, foreign_key: true
      t.integer :grade

      t.timestamps
    end
  end
end
