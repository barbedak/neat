class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :series, null: false, foreign_key: true
      t.boolean :special_wash

      t.timestamps
    end
  end
end
