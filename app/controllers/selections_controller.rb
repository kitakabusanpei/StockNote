class SelectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_selection, only: [:edit, :update, :destroy]
  def index
    @selections = Selection.all.order(:selection_order)
    @stacks = Stack.all
    @users = User.all
    @selection_csv = current_user.selections.order(:selection_order)
    # CSV出力
    respond_to do |format|
      format.html
      format.csv {send_data @selection_csv.to_csv}
    end
  end

  def new
    @selection = Selection.new
  end

  def create
    @selection = Selection.new(selection_params)
    @selection.user_id = current_user.id
    if @selection.save
      redirect_to selections_path, notice: "投資候補を作成しました。"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @selection.update(selection_params)
      redirect_to selections_path, notice: "投資候補を更新しました。"
    else
      render 'edit'
    end
  end

  def destroy
    @selection.destroy
    redirect_to selections_path, notice: "投資候補を削除しました。"
  end

  private
  def selection_params
    params.require(:selection).permit(:selection_order, :buy_selection, :terget_price, :name)
  end

  def set_selection
    @selection = Selection.find(params[:id])
  end

end
