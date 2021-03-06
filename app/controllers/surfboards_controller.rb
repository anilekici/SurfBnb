class SurfboardsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @surfboards = Surfboard.all.order(model: :asc)
  end

  #show
  def show
    @surfboard = Surfboard.find(params[:id])
  end

  #new
  def new
    @surfboard = Surfboard.new
  end

  #create
  def create
    @surfboard = Surfboard.new(surfboards_params)
    @surfboard.user = current_user
    if @surfboard.save
      redirect_to surfboards_path(@surfboard), notice: "Surfboard #{@surfboard.model} has been added"
    else
      render :new
    end
  end

  #destroy
  def destroy
    @surfboard = Surfboard.find(params[:id])
    @surfboard.destroy
    redirect_to surfboards_path
  end

  private

  def surfboards_params
    params.require(:surfboard).permit(:model, :price, :size, :description, :owner_id, :photo)
  end

end
