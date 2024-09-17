class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :subtitle
      t.string :author
      t.integer :pages
      t.string :published_date
      t.text :description
      t.string :publisher
      t.string :image_link
      t.string :self_link

      t.timestamps
    end
  end
end
