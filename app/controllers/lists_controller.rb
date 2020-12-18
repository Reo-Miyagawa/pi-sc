class ListsController < ApplicationController

  def index
  end

  def new
    @lists = List.new
  end

  def create
    @lists = List.create(list_params)
    if @lists.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:title).merge(user: current_user)
  end

end