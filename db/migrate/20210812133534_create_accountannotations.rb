class CreateAccountannotations < ActiveRecord::Migration[6.1]
  def change
    create_table :accountannotations do |t|
      t.references :annotation, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
