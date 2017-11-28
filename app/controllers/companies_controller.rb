class CompaniesController < ApplicationController
  before_action :authenticate_user!
  def index
    # @companies = Company.all.order(:code)
    @stacks = Stack.all
    @companies = Company.page(params[:page]).order(:code)
    # if params[:search]
    #   # 検索機能（証券コードのみ）
    #   @companies = Company.search(params[:search]).page(params[:page]).order(:code)
    #   #  binding.pry
    # else
    #   # kaminari
    #   @companies = Company.page(params[:page]).order(:code)
    # end
  end

  # チャート、優待表示で使用
  # def show
  # end

end
