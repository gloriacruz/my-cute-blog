class ArticlesController < ApplicationController

  # /articles/
  def index
    @articles = Article.all
  end

  # /articles/:id
  def show
    @article = Article.find(params[:id])
  end

  # /articles/new
  def new
    @article = Article.new
  end

  # /articles/:id/edit
  def edit
    @article = Article.find(params[:id])
  end

  # /articles/
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  # /articles/:id
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  # /articles/:id
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path #articles_path = index of articles (root)
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
