class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @movies = @list.movies
  end

  def new
    @list = List.new
  end

  def create
    # raise
    # @list = List.new(params)
    # if @list.save
    #   redirect_to list_path(@list)
    # else
    #   render.new
    # end
  end
end
