class ListsController < ApplicationController

  def index

  end

  def show
    @list = List.find(params[:id])
  end

  def create

  end

end
