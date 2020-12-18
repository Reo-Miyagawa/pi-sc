class Lists < ApplicationController

  def index
  end

  def new
    @lists = List.new
  end

  def create
    @list = List.create(kist_params)
    if @list.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def kist_params
    params.require(:list).permit(:title)
  end
  
end
