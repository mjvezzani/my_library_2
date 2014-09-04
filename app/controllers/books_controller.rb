class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      if @book.checked_out == false
        @book.friend = nil
        @book.save
      end
      flash[:success] = "Book checked out"
      redirect_to root_path
    else
      redirect_to book_path(@book)
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :isbn, :user_id, :friend_id, :checked_out)
  end

end
