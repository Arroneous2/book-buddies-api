class Bookshelf < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :status, inclusion: { in: %w(want_to_read reading read), allow_nil: true, allow_blank: true }, on: :update
  validates :format_type, inclusion: { in: %w(audio print ebook), allow_nil: true, allow_blank: true }, on: :update
  validates :book_location, inclusion: { in: %w(own loaned waterloo_library, rod_library, cedar_falls_library), allow_nil: true, allow_blank: true }, on: :update
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }, allow_nil: true, allow_blank: true, on: :update

end
