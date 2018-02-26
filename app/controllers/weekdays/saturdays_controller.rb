class Weekdays::SaturdaysController < ApplicationController
  def index
    @saturdays = Saturday.all
  end

  def show
    @saturday = Saturday.find(params[:id])
  end

  def new
    @saturday = Saturday.new
  end

  def edit
    @saturday = Saturday.find(params[:id])
  end

  def create
    @saturday = Saturday.new(saturday_params)
    if @saturday.save
      redirect_to weekdays_saturdays_path
    else
      render 'new'
    end
  end

  def update
    @saturday = Saturday.find(params[:id])
    if @saturday.update(monday_params)
      redirect_to weekdays_saturdays_path
    else
      render 'edit'
    end
  end

  def destroy
    @saturday = Saturday.find(params[:id])
    @saturday.destroy
    redirect_to weekdays_saturdays_path
  end

	private

  def saturday_params
    params.require(:saturday).permit(:name_of_the_dish, :description, :price)
  end
end