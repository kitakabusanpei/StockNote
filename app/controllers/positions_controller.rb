class PositionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_position, only: [:edit, :show, :update, :destroy]
  def index
    @positions = Position.all
    @stacks = Stack.all
    @users = User.all
  end

  def new
    @position = Position.new
  end

  def create
    @position = Position.new(positions_params)
    @position.user_id = current_user.id
    if @position.save
      redirect_to positions_path, notice: "ポートフォリオを作成しました。"
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @users = User.all
  end

  def update
    if @position.update(positions_params)
      redirect_to positions_path, notice: "ポジションを更新しました"
    else
      render 'edit'
    end
  end

  def destroy
    @position.destroy
    redirect_to positions_path, notice: "ポートフォリオを削除しました。"
  end

  private
  def positions_params
    params.require(:position).permit(:name, :lot, :buy_price, :buy_reason, :buy_image, :sell_price, :sell_percent, :high_price_per, :sell_reason)
  end

  def set_position
    @position = Position.find(params[:id])
  end
end

# 例外処理
# raise
# 強制停止
# binding.pry
