class BookshelvesController < ApplicationController
  before_action :authenticate_user

  def index
    @bookshelves = Bookshelf.where(user_id: current_user.id)
    render :index
  end

  def user_index
    @bookshelves = Bookshelf.where(user_id: params[:user_id])
    render :index
  end

  def show
    @bookshelf = Bookshelf.find_by(id: params[:id])
    render :show    
  end 

  def create
    @bookshelf = Bookshelf.create(
      status: params[:status],
      rating: params[:rating],
      book_location: params[:book_location],
      format_type: params[:format_type],
      book_id: params[:book_id],
      user_id: current_user.id,
    )
    render :show
  end

  def update
    @bookshelf = Bookshelf.find_by(id: params[:id])
    @bookshelf.update(
      status: params[:status],
      rating: params[:rating],
      book_location: params[:book_location],
      format_type: params[:format_type]
    )
    @bookshelf.save
    render :show
  end
end
