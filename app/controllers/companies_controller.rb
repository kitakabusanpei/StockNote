class CompaniesController < ApplicationController
  before_action :authenticate_user!
  def index
    # @companies = Company.all.order(:code)
    # kaminari
    @companies = Company.page(params[:page]).order(:code)
    @stacks = Stack.all
  end

  def new
  end

  def updates
  end

  def show
  end

end
