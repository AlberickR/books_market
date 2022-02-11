class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author_name
      t.integer :condition
      t.string :category
      t.string :genre
      t.string :description
      t.decimal :price
      t.integer :user_id

      t.timestamps
    end
  end
end
