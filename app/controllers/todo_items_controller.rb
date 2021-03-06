class TodoItemsController < ApplicationController
  def index
    @todos = TodoItem.all
    @todo = TodoItem.new
  end

  def new
  end

  def create
    @todo = TodoItem.new(todo_items_params)
    if @todo.save
      respond_to do |format|
        format.json { render json: @todo, status: :created, message: "Success" }
        format.html { redirect_to todo_items_path, notice: 'Successfully Created!' }
      end
    else
      respond_to do |format|
        format.json { render json: @todo.errors, staus: :created, message: "Success"}
        format.html { redirect_to :back, alert: 'Error Occured!' }
      end
    end
  end

  def show
  end

  def destroy
  end
end

private

def todo_items_params
  params.require(:todo_item).permit(:message, :priority, :due_date)
end
