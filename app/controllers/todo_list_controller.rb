class TodoListController < ApplicationController
  def index
    @todos = TodoList.all
  end

  def new
    @todo = TodoList.new
  end

  def create
  end

  def show
  end

  def destroy
  end
end
