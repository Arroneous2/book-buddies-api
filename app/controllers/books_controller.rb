class BooksController < ApplicationController
  before_action :authenticate_user
  def index
    @books = Book.all
    render :index
  end

  def show
    @book = Book.find_by(id: params[:id])
    render :show
  end

  def create
    @book = Book.create(
      title: params[:title],
      subtitle: params[:subtitle],
      author: params[:author],
      pages: params[:pages],
      published_date: params[:published_date],
      description: params[:description],
      publisher: params[:publisher],
      image_link: params[:image_link],
      self_link: params[:self_link]
    )
    render :show
  end
end
