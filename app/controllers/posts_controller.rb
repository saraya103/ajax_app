class PostsController < ApplicationController

  def index #indexアクションを定義
    @posts = Post.order(id: "DESC")
  end

#  def new
#  end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post }
  end
end
