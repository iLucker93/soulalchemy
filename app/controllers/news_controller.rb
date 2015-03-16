class NewsController < ApplicationController

  def index
    if params[:tag]
      @news = News.tagged_with(params[:tag])
    else
      @news = News.all
    end
  end

  def show
    @news = News.find(params[:id])
  end

end
