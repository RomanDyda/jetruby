class Weekdays::TuesdaysController < ApplicationController
  def index
    @tuesdays = Tuesday.all
  end

  def show
    @tuesday = Tuesday.find(params[:id])
  end

  def new
    @tuesday = Tuesday.new
  end

  def edit
    @tuesday = Tuesday.find(params[:id])
  end

  def create
    @tuesday = Tuesday.new(tyesday_params)
    if @tuesday.save
      redirect_to weekdays_tuesdays_path
    else
      render 'new'
    end
  end

  def update
    @tuesday = Tuesday.find(params[:id])
    if @tuesday.update(tuesday_params)
      redirect_to weekdays_tuesdays_path
    else
      render 'edit'
    end
  end

  def destroy
    @tuesday = Tuesday.find(params[:id])
    @tuesday.destroy
    redirect_to weekdays_tuesdays_path
  end

	private

  def tyesday_params
    params.require(:tuesday).permit(:name_of_the_dish, :description, :price)
  end
end