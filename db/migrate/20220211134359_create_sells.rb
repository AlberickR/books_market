class CreateSells < ActiveRecord::Migration[6.1]
  def change
    create_table :sells do |t|
      t.integer :books_id
      t.integer :user_id
      t.decimal :price

      t.timestamps
    end
  end
end
