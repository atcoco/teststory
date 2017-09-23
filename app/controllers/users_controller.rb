class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]
  before_action :authorize_user, only: [:edit, :update]
  before_action :set_user, only: [:show, :edit, :update]
  per_request_react_rails_prerenderer
  def show
    @followers_count = @user.followers.count
    @following_count = @user.following.count
    @latest_posts = @user.posts.latest(3).published
    @recommended_posts = @user.liked_posts.latest(4).published.includes(:user)
  end

  def edit
  end

  def update
    puts "-----------------------------------------"
    puts params[:user][:avatar]

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit, alert: "Could not update, Please try again"
    end
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:description,  :location,:avatar)
    end

    def authorize_user
      unless current_user.slug == params[:id]
        redirect_to root_url
      end
    end
end
