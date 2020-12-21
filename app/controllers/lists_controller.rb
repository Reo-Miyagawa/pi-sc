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

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to root_path
  end

  private

  def list_params
    params.require(:list).permit(:title).merge(user_id: current_user.id)
  end

end
