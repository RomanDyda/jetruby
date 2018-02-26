class Weekdays::ThursdaysController < ApplicationController
  def index
    @thursdays = Thursday.all
  end

  def show
    @thursday = Thursday.find(params[:id])
  end

  def new
    @thursday = Thursday.new
  end

  def edit
    @thursday = Thursday.find(params[:id])
  end

  def create
    @thursday = Thursday.new(thursday_params)
    if @thursday.save
      redirect_to weekdays_thursdays_path
    else
      render 'new'
    end
  end

  def update
    @thursday = Thursday.find(params[:id])
    if @thursday.update(thursday_params)
      redirect_to weekdays_thursdays_path
    else
      render 'edit'
    end
  end

  def destroy
    @thursday = Thursday.find(params[:id])
    @thursday.destroy
    redirect_to weekdays_thursdays_path
  end

	private

  def thursday_params
    params.require(:thursday).permit(:name_of_the_dish, :description, :price)
  end
end