class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.references :product, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
