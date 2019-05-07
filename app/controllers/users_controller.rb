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
    render json: @users
  end

  # PUT /users/:id
  def update
    @user.update(user_params)
    head :no_content
  end

  # DELETE /users/:id
  def destroy
    @user.destroy
    head :no_content
  end

  private

  def user_params
    # whitelist params
    params.permit(:title, :created_by)
  end

end
