class AppointmentsController < ApplicationController
  def new
    @appoint = Appointment.new
  end

  def create
    @appoint = Appointment.new(appoint_params)
    if @appoint.save
      redirect_to @appoint
    end
  end

  def show
    @appoint = Appointment.find params[:id]
  end

  def index
    @appoints = Appointment.all
  end

  def edit
    @appoint = Appointment.find params[:id]
    @patient = @appoint.patient
    @physician = @appoint.physician
  end

  def update
    @appoint = Appointment.find params[:id]
    if @appoint.update_attributes(appoint_params)
      redirect_to appointments_path
    end
  end

  def destroy
    @appoint = Appointment.find params[:id]
    if @appoint.delete
      redirect_to appointments_path
    end
  end

  private
  def appoint_params
   params.required(:appointment).permit!
  end
end
