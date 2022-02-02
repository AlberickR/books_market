#frozen_string_literal: true

class BooksController < ApplicationController

  def index
    @q = Book.ransack(params[:q])
    @books = @q.result(distinct: true)
  end
end