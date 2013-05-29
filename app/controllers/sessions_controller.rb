class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user
      sign_in(user)
      redirect_to decks_path
    else
      redirect_to new_user_path, notice: "Please sign up first."
    end
  end

  def destroy
    cookies.delete(:user_id)
    redirect_to root_path
  end
end
