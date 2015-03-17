class ArticlesController < ApplicationController

  def index
    if params[:tag]
      @articles = Article.tagged_with(params[:tag]).page(params[:page]).per(3)
    else
      @articles = Article.all.page(params[:page]).per(3)
    end
    @tags = Article.tag_counts
  end

  def show
    @article = Article.find(params[:id])
  end

end
