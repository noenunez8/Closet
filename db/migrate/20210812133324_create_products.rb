class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :detail
      t.references :account, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
