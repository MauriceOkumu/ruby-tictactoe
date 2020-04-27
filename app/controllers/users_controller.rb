class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    @user ? redirect_to(users_path) : render('new')
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params) ? redirect_to(users_path) : render('show')
   
  end


  def delete
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to(users_path)
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
