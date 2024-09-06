class LikesController < ApplicationController
  before_action :set_pai #, only: %i[ show create index]

  def index
    render json: @article.likes
  end

  def show
    @like = Like.find(params[:id])
    render json: @like
  end

  def create
    @like = Like.new(like_params)
    if @like.save
      render json: @like, status: :created
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  private

  def set_pai
    @article = Article.find(params[:article_id])
  end

  def like_params
    params.require(:like).permit(:num_likes, :article_id)
  end

end
