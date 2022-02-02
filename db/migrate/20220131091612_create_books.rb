class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author_name
      t.string :condition
      t.string :category
      t.string :genre
      t.string :description
      t.decimal :price, :decimal

      t.timestamps
    end
  end
end
