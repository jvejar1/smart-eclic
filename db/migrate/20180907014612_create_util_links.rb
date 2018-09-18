class CreateUtilLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :util_links do |t|
      t.text :link
      t.integer :link_type
      t.references :prelab, foreign_key: true

      t.timestamps
    end
  end
end
