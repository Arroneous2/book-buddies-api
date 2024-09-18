class AddUserRefToBookshelf < ActiveRecord::Migration[7.1]
  def change
    add_reference :bookshelves, :user, null: false, foreign_key: true
  end
end
