class BillsController < ApplicationController
  def new
    if params[:id] != nil
        @patient =Patient.find params[:id]
        @bill = @patient.bills.new
    else
  	   @bill = Bill.new
    end
  end

  def create
    byebug
  	@bill = Bill.new(bill_controller)
  	if @bill.save
  		redirect_to @bill
  	end
  end

 def index
      if params[:id]
      @patient = Patient.find params[:id]
     else
      
      @bills = Bill.all
    end
 end

  def show
  	@bill = Bill.find params[:id]
    @pat = @bill.patient
  end
 private
	 def bill_controller
	 	params.require(:bill).permit!

	 end
end
