# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.all
  end

  def show
    pp @post
    @post
  end

  def new
    @post = Post.new
  end

  def edit
    pp @post
    @post
  end

  def create

    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to post_path(@post)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    pp post_params

    if @post.update(post_params)
      flash[:success] = 'Article was successfully updated'
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      flash[:success] = 'article was successfully deleted'
      redirect_to posts_path
    else
      flash[:failure] = 'Article cannot be deleted'
      # Отрисовывается форма создания, все параметры остаются
      redirect_to post_path(@post)
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :category_id)
  end

end
