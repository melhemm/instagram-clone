class PostsController < ApplicationController
  before_action :authenticate_account!

  before_action :set_post, only: %i[ show edit update destroy ]

  def index
    @posts = Post.all
  end

  def show; end

  def new
    @post = Post.new
  end

  def edit; end

  def create
    @post = Post.new(post_params)
    @post.account_id = current_account.id if account_signed_in?
    
    if @post.save
      redirect_to dashboard_path , notice: "Post was successfully created."
    else
      render :new
    end
  end

  def update

    if @post.update(post_params)
      redirect_to dashboard_path, notice: "Post was updated"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to dashboard_path
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:image, :description)
    end
end
