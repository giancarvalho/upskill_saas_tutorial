class UsersController < ApplicationController
  before_action :authenticate_user!
  
  
  def index
    @users = User.includes(:profile)
  end
  #When GET to /users/:id
  def show
    @user = User.find(params[:id])
  end
  
end