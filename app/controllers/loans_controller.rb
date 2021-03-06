class LoansController < ApplicationController
  def new
    @loan = Loan.new
  end

  def create
    @loan = Loan.new(loan_params)
    if @loan.save
      redirect_to generate_amortization_schedule_loan_path(@loan)
    else
      render :new
    end
  end

  def generate_amortization_schedule
    @loan = Loan.find(params[:id])
    @amortization_schedule = @loan.amortization_schedule
  end

  def index
    @loans = Loan.all
  end

  private

  def loan_params
    params.require(:loan).permit(:amount, :term, :interest_rate, :request_date)
  end
end
