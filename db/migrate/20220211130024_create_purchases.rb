class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.integer :books_id
      t.integer :users_id

      t.timestamps
    end
  end
end
