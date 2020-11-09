class CreateSurfboards < ActiveRecord::Migration[6.0]
  def change
    create_table :surfboards do |t|
      t.string :model
      t.integer :price
      t.string :availability
      t.text :description
      t.string :size
      t.string :suitable_level
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
