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
        format.html {render 'new'}
        format.json { render json: @debtor.errors }
      end
    end
  end

  def update
    @debtor = Debtor.find(params[:id])
    respond_to do |format|
      if @debtor.update(debtor_params)
        format.json { render json: @debtor }
      else
        format.json { render json: @debtor.errors.messages }
      end
    end
  end

  def destroy
    @debtor = Debtor.find(params[:id])
    @debtor.destroy
    respond_to do |format|
      # format.html {redirect_to root_path, success: 'Product destroyed successfully'}
      format.json { render json: @debtor }
    end
  end

  private

  def debtor_params
    params.require(:debtor).permit(:name, :amount, :description)
  end
end
