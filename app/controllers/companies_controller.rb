class CompaniesController < ApplicationController
  def index
    # kaminari
    @companies = Company.page(params[:page]).order(:code)
    # @companies = Company.all.order(:code)
    @stacks = Stack.all
    # テーブルの結合と要素の重複削除
    # @mix_data = @companies.concat(@stacks).uniq!
  end

  def new
  end

  def create
  end

  def show
  end

end
