class AddFormatTypeToBookshelves < ActiveRecord::Migration[7.1]
  def change
    add_column :bookshelves, :format_type, :string
  end
end
