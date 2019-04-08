class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.all
    render json: @schedules
  end

  def show
    @schedule = Schedule.find(params[:id])
    render json: @schedule
  end

  def create
    @schedule = Schedule.create(schedule_params)
    if @schedule.valid?
      render json: @schedule, status: :ok
    else
      render json: @schedule.errors.full_messages, status: :not_acceptable
    end
  end

  def update
    @schedule = Schedule.find_by(id: params[:id])
    render json: @schedule, status: :ok
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy

    render json: @schedule, status: :ok
  end


  private

  def schedule_params
    params.require(:schedule).permit(:name)
  end

end
