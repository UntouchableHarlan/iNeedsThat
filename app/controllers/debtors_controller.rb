class DebtorsController < ApplicationController
  def new
    @debtor = current_user.debtors.new
  end

  def create
    @debtor = current_user.debtors.new(debtor_params)
    respond_to do |format|
      if @debtor.save
        format.json { render json: @debtor }
      else
        format.json { render json: @debtor.errors }
      end
    end
  end

  private

  def debtor_params
    params.require(:debtor).permit(:name, :amount)
  end
end
