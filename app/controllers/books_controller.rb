class BooksController < ActionController
  before_action :set_book, only: [:edit, :update, :show, :destroy]

  def index
    @books = Book.all
  end

  def new
    #@book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      sd
    else
      render 'new'
    end
  end

  def new
    @book = Book.new
  end

  def show
  end

  def edit
  end

  def update
    
  end

  def destroy
    
  end

  private
    def set_book
      @book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :author, :description)
    end
end