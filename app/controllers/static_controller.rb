class StaticController < ApplicationController
  def index
    @user = User.new
    if current_user
      @debtor = Debtor.new
      @debtors = current_user.debtors.all
      @debtorr = current_user.debtors.find_by(params[:id])
    end
  end
end
