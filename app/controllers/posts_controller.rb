class PostsController < ApplicationController

  def index #indexアクションを定義
    @posts = Post.order(id: "DESC")
  end

#  def new
#  end

  def create
    Post.create(content: params[:content])
    rediredt_to action: :index
  end
end
