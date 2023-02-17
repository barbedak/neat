class CreateBrews < ActiveRecord::Migration[7.0]
  def change
    create_table :brews do |t|
      t.string :batch
      t.date :date
      t.references :product, null: false, foreign_key: true
      t.boolean :washed
      t.integer :washing_id
      t.references :equipments, null: false, foreign_key: true

      t.timestamps
    end
  end
end
