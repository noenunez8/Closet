class CreateAnnotations < ActiveRecord::Migration[6.1]
  def change
    create_table :annotations do |t|
      t.date :date
      t.string :detail
      t.integer :price

      t.timestamps
    end
  end
end
