class SurfboardsController < ApplicationController

  def index
    @surfboards = Surfboard.all.order(model: :asc)
  end

  #show
  def show
    @surfboard = Surfboard.find.(params[:id])
  end

  #new
  def new
    @surfboard = Surfboard.new
  end

  #create
  def create
    @surfboard = Surfboard.find(surfboards_params[:id])
      if @surfboards.save
        redirect_to surfboards_path(@surfboard), notice: "Surfboard #{@surfboard.model} is on the menu"
      else
        render :new
      end
  end

  #destroy
  def destroy
  end

  private

  def surfboards_params
    params.require(:surfboard).permit(:model, :price, :owner_id)
  end

end
