class CommentsController < ApplicationController

  before_action :set_article

  # GET /articles/:article_id/comments
  def index
    render json: @article.comments
  end

  # POST /articles/:article_id/comments
  def create
    @comments = Comment.new(comment_params)
    if @comments.save
      render json: @comments, status: :created
    else
      render json: @comments.errors, status: :unprocessable_entity
    end
  end

  private

  # SETA O ARTIGO
  def set_article
    @article = Article.find(params[:article_id])
  end

  # PARAMETROS DO COMENTARIO
  def comment_params
    params.require(:comment).permit(:name, :content, :article_id)
  end

end
