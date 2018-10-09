class PhysiciansController < ApplicationController
  def new
    @physician = Physician.new
  end

  def create
    @physician = Physician.new(phy_params)
    if @physician.save
      redirect_to @physician
    end
  end

  def show
    @physician = Physician.find params[:id]
  end

  def index
    @physicians = Physician.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def phy_params
    params.require(:physician).permit!
  end
end
