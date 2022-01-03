class AccountsController < ApplicationController
  # before_action :authenticate_account!

  def index
    # Feed
    @posts = Post.active
  end

  def show
    #user profile
  end
end
