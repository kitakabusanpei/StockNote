class PositionsController < ApplicationController
  before_action :set_position, only: [:edit, :update, :destroy]
  def index
    @positions = Position.all
  end

  def new
    @position = Position.new
  end

  def create
    @position = Position.new(positions_params)
    if @position.save
      redirect_to positions_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @positin.update(positions_params)
    else
    end
  end

  def destroy
    @position.destroy
    redirect_to root_path
  end

  private
  def positions_params
    params.require(:position).permit(:name, :lot, :buy_price, :buy_reason, :buy_image, :sell_price, :sell_percent, :high_price_per, :sell_reason)
  end

  def set_position
    @position = Position.find(params[:id])
  end
end
