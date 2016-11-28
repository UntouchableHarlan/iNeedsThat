class SessionsController < ApplicationController
  
  def new
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    respond_to do |format|
      if @user && @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
        format.json { render json: @user }
      else
        format.json {render json: 406 }
        render 'new'
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
