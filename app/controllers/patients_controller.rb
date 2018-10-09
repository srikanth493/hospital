class PatientsController < ApplicationController
  before_action :set_patient,only: [:show,:edit,:update,:destroy]
  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to @patient
    else
      render 'new'
    end
  end

  def show
  end

  def index
    @patients = Patient.all
  end

  def edit
  end

  def update
    if @patient.update_attributes(patient_params)
      redirect_to patient_path
    else
      render 'edit'
    end
  end

  def destroy
    if @patient.delete
      redirect_to patients_path
    end
  end

  private
    def patient_params
      params.require(:patient).permit!
    end
    def set_patient
    @patient = Patient.find params[:id]
    end
end
