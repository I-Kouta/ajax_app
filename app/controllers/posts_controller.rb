class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # newアクションはコメントにした  
  # def new
  # end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index # ビューファイルを参照しない
  end
end