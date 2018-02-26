class Weekdays::WednesdaysController < ApplicationController
  def index
    @wednesdays = Wednesday.all
  end

  def show
    @wednesday = Wednesday.find(params[:id])
  end

  def new
    @wednesday = Wednesday.new
  end

  def edit
    @wednesday = Wednesday.find(params[:id])
  end

  def create
    @wednesday = Wednesday.new(wednesday_params)
    if @wednesday.save
      redirect_to weekdays_wednesdays_path
    else
      render 'new'
    end
  end

  def update
    @wednesday = Wednesday.find(params[:id])
    if @wednesday.update(wednesday_params)
      redirect_to weekdays_wednesdays_path
    else
      render 'edit'
    end
  end

  def destroy
    @wednesday= Wednesday.find(params[:id])
    @wednesday.destroy
    redirect_to weekdays_wednesdays_path
  end

	private

  def wednesday_params
    params.require(:wednesday).permit(:name_of_the_dish, :description, :price)
  end
end