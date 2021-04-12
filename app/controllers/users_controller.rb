class UsersController < ApplicationController
  before_action :authenticate_user!
  
  #When GET to /users/:id
  def show
    @user = User.find(params[:id])
  end
  
end