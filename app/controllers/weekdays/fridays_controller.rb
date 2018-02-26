class Weekdays::FridaysController < ApplicationController
  def index
    @fridays = Friday.all
  end

  def show
    @friday = Friday.find(params[:id])
  end

  def new
    @friday = Friday.new
  end

  def edit
    @friday = Friday.find(params[:id])
  end

  def create
    @friday = Friday.new(friday_params)
    if @friday.save
      redirect_to weekdays_fridays_path
    else
      render 'new'
    end
  end

  def update
    @friday = Friday.find(params[:id])
    if @friday.update(friday_params)
      redirect_to weekdays_fridays_path
    else
      render 'edit'
    end
  end

  def destroy
    @friday = Friday.find(params[:id])
    @friday.destroy
    redirect_to weekdays_fridays_path
  end

	private

  def friday_params
    params.require(:friday).permit(:name_of_the_dish, :description, :price)
  end
end