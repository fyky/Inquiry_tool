class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def new
  end

  def update
  end

  def edit
    @user = User.find(params[:id])
  end
end
