class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :phone_number
      t.integer :dni

      t.timestamps
    end
  end
end
