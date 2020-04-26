class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end


  def delete
  end

  def destroy
  end

  private

  def user_params
    # Form Authentication
    params.require(:user)
    # Regulate mass assignment
    .permit(:first_name, :last_name, :email)
    # 1.Instantiate a new user using params from new form
  end
end
