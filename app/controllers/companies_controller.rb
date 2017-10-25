class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    @companies_lines = Company.page(params[:page])
    @stacks = Stack.all
  end

  def new
  end

  def create
  end

  def show
  end

end
