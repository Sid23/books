class BooksController < ApplicationController
  before_action :set_book, only: [:edit, :update, :show, :destroy]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

   def create
     @book = Book.new(book_params)
     if @book.save
       flash[:notice] = "Book created successfully !!"
       redirect_to book_path(@book)
     else
       render 'new'
     end
   end

 def show

 end

  def edit

  end

  def update
    #pass the list of updated params
    if @book.update(book_params)
       flash[:notice] = "Book updated successfully !!"
       redirect_to book_path(@book)
     else
       render 'edit'
     end
  end

  def destroy
    @book.destroy
    flash[:notice] = "Book deleted successfully"
    redirect_to books_path()
  end

  private
    def set_book
      @img = "books/b" + params[:id].to_s + ".jpg"
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :author, :year)
    end
end