class RemoveFormatFromBookshelves < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookshelves, :format, :string
  end
end
