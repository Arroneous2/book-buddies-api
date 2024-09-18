class CreateBookshelves < ActiveRecord::Migration[7.1]
  def change
    create_table :bookshelves do |t|
      t.string :status
      t.integer :rating
      t.string :book_location
      t.string :format

      t.timestamps
    end
  end
end
