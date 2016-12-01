class StaticController < ApplicationController
  def index
    @user = User.new
    if current_user
      @debtors = current_user.debtors.all
    end
    @debtor = Debtor.new
  end
end
