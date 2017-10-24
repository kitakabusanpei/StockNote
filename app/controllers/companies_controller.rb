class CompaniesController < ApplicationController
  def index
    @stacks = Stack.all
  end
end
