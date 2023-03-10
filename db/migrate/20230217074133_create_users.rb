class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :password_digest
      t.boolean :admin_rule
      t.integer :employee_id

      t.timestamps
    end
  end
end
