class DetailsController < ApplicationController
  def index
    @detail = Detail.all
  end

  def new
    @detail = Detail.new
  end

  def create
    if Detail.create(params.require(:detail).permit(:name, :price, :description, :color))
      redirect_to '/detail'
    end
  end
end
