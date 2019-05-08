class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  # POST /users
  def create
    @user = User.create!(user_params)
    render json: @users
  end

  # GET /users/:id
  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

  # PUT /users/:id
  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    render json: @user
  end

  # DELETE /users/:id
  def destroy
    @user.destroy
    head :no_content
  end

  private

  def user_params
    # whitelist params
    params.permit(:balance)
  end

end
