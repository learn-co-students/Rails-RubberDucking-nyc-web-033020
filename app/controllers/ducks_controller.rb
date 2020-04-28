class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def new
    @duck = Duck.new
    render 'new'
  end

  def show
    @duck = Duck.find(params[:id])
    render 'show'
  end

  def create
    duck = Duck.new(duck_params)
    if duck.save
      redirect_to duck_path(duck)
    else
      flash[:errors] = duck.errors.full_messages
      redirect_to new_duck_path
    end
  end

  def edit
    @duck = Duck.find(params[:id])
    render 'edit'
  end

  def update
    duck = Duck.find(params[:id])
    duck.assign_attributes(duck_params)
    if duck.valid?
      duck.save
      redirect_to duck_path(duck)
    else
      flash[:errors] = duck.errors.full_messages
      redirect_to edit_duck_path(duck)
    end
  end

  def destroy
    duck = Duck.find(params[:id])
    duck.destroy
    redirect_to ducks_path
  end

  private

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end
end
