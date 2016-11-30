class StaticController < ApplicationController
  def index
    @user = User.new
    @debtors = current_user.debtors.all
    @debtor = Debtor.new
  end
end
