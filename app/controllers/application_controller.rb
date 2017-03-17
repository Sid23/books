class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show
    @book = Book.find(params[:id])
    if @book
  end

end
