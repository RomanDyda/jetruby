class Weekdays::MondaysController < ApplicationController
  def index
    @mondays = Monday.all
  end

  def show
    @monday = Monday.find(params[:id])
  end

  def new
    @monday = Monday.new
  end

  def edit
    @monday = Monday.find(params[:id])
  end

  def create
    @monday = Monday.new(monday_params)
    if @monday.save
      redirect_to weekdays_mondays_path
    else
      render 'new'
    end
  end

  def update
    @monday = Monday.find(params[:id])
    if @monday.update(monday_params)
      redirect_to weekdays_mondays_path
    else
      render 'edit'
    end
  end

  def destroy
    @monday = Monday.find(params[:id])
    @monday.destroy
    redirect_to weekdays_mondays_path
  end

	private

  def monday_params
    params.require(:monday).permit(:name_of_the_dish, :description, :price)
  end
end