class SchedulesController < ApplicationController
  
  def index
    @schedules = Schedule.all
  end
  
  def show
    @schedule = Schedule.find(params[:id])
  end
  
  def new
    @schedule = Schedule.new
  end
  
  def create
    @schedule = Schedule.new(schedule_params)
    # @schedule = Schedule.new(params.require(:schedule).permit(:title, :startdate, :enddate, :schedulememo))
    # binding.pry
    if @schedule.save
    # binding.pry
      # flash[:notice] = "ユーザーを新規登録しました"
      redirect_to :schedules
    else
      # binding.pry
      render "new"
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  def schedule_params
    params.require(:schedule).permit(:title, :startdate, :enddate, :schedulememo)
  end
  
end
