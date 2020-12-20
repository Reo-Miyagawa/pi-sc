class ListsController < ApplicationController

  def index
    @lists = List.all.order('created_at DESC')
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

  def edit
    @list = List.find(params[:id])
  end

  private

  def list_params
    params.require(:list).permit(:title).merge(user_id: current_user.id)
  end

end
