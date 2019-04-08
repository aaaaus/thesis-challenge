class AppointmentsController < ApplicationController

  def create
    @appointment = Appointment.create(appointment_params)
    if @appointment.valid? && (@appointment.end_time > @appointment.start_time)
      render json: @appointment, status: :ok
    else
      render json: @appointment.errors.full_messages, status: :not_acceptable
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:schedule_id, :event_name, :start_time, :end_time)
  end

end
