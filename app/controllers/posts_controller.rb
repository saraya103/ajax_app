class PostsController < ApplicationController

  def index #indexアクションを定義
    @posts = Post.order(id: "DESC")
  end

#  def new
#  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end
