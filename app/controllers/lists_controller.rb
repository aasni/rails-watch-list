class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @lists = List.find(params[:id])
    @bookmarks = @list.bookmarks
    @movies = @list.movies
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params)
    if @list.save
      redirekt_to list_path(@list)
    else
      render.new
    end
  end

  private

  def params
    params.require(:list)
  end
end
