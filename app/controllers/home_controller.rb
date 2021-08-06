class HomeController < ApplicationController
  before_action :index, :get_users

  def index
  end

  def destroy_all
    User.all.destroy_all
    redirect_to root_path
  end

  def create_random_user
    user = User.new
    user.first_name = Faker::Name.first_name
    user.last_name = Faker::Name.last_name
    user.email = Faker::Internet.email
    user.save!
    sleep 2
    redirect_to root_path
  end

  private

    def get_users
      @users = User.all
    end
end
