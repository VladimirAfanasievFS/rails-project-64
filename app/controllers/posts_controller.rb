# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.all
  end

  def show
    @post
  end

  def new
    @post = Post.new
  end

  def edit
    @post
  end

  def create
    # binding.pry
    @post = Post.new(post_params)

    @post.build_category(category_params)

    pp @post.errors
    if @post.save
      redirect_to post_path(@post)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
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
      redirect_to root_path
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
    params.require(:post).permit(:title, :body)
  end

  def category_params
    params.require(:post).require(:category).permit(:name)
  end
end
