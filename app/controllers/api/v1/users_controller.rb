class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_user, only: [ :show ]

  def index
    @users = User.all
  end

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
