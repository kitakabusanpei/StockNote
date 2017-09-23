class StacksController < ApplicationController
  def index
    @stack = Stack.all
  end
end
