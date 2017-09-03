class CommentsController < ApplicationController

  # /articles/:article_id/comments
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)

    respond_to do |format|
      format.html { redirect_to articles_path(@article) }
      format.js
    end
  end

  # /articles/:article_id/comments/:id
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to articles_path(@article)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end
