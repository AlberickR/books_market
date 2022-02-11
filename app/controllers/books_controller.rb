#frozen_string_literal: true

class BooksController < ApplicationController

  def index
    @q = Book.ransack(params[:q])
    @book = @q.result(distinct: true)
  end

  def show
    @book = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(books_params)
    debugger
    if @book.save
      flash[:notice] = 'Se ha guardado con exito'
      redirect_to profile_path(current_user)
    else
      flash[:error] = 'Ocurrio un error y no se pudo guardar'
      redirect_to profile_path(current_user)
    end
  end

  private

  def books_params
    params.require(:book).permit(:id, :name, :author_name, :condition, :category, :genre, :description, :price)
  end
end