class CreateModels < ActiveRecord::Migration[5.0]
  def change
    create_table :models do |t|
      t.string :name
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
