# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource only: %i[show update destroy]

  def index
    users = User.all
    render json: { users: users.map { |user| format_user(user) } }, status: 200
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def format_user(user)
    { id: user.id, first_name: user.first_name, last_name: user.last_name, email: user.email }
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end
end
