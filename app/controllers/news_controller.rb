class NewsController < ApplicationController

  def index
    if params[:tag]
      @news = News.tagged_with(params[:tag]).page(params[:page]).per(3)
    else
      @news = News.all.page(params[:page]).per(3)
    end
    @tags = News.tag_counts
  end

  def show
    @news = News.find(params[:id])
  end

  def comment
    commentable = News.find(params[:comment][:id])
    comment = commentable.comments.create
    comment.title = params[:comment][:title]
    comment.comment = params[:comment][:comment]
    comment.user_id = params[:comment][:user_id]
    comment.save
    redirect_to :back
  end

  private

    def comment_params
      params.require(:comment).require(:title, :comment)
    end

end
