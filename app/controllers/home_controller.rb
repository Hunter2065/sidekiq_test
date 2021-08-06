class HomeController < ApplicationController
  before_action :index, :get_users

  def index
  end

  def destroy_all
    User.all.destroy_all
    redirect_to root_path
  end

  def create_random_user
    RandomUserJob.perform_later
    redirect_to root_path
  end

  private

    def get_users
      @users = User.all
    end
end
