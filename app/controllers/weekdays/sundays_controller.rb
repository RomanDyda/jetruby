class Weekdays::SundaysController < ApplicationController
  def index
    @sundays = Sunday.all
  end

  def show
    @sunday = Sunday.find(params[:id])
  end

  def new
    @sunday = Sunday.new
  end

  def edit
    @sunday = Sunday.find(params[:id])
  end

  def create
    @sunday = Sunday.new(sunday_params)
    if @sunday.save
      redirect_to weekdays_sundays_path
    else
      render 'new'
    end
  end

  def update
    @sunday = Sunday.find(params[:id])
    if @sunday.update(sunday_params)
      redirect_to weekdays_sundays_path
    else
      render 'edit'
    end
  end

  def destroy
    @sunday = Sunday.find(params[:id])
    @sunday.destroy
    redirect_to weekdays_sundays_path
  end

	private

  def sunday_params
    params.require(:sunday).permit(:name_of_the_dish, :description, :price)
  end
end