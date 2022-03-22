class NewsController < ApplicationController
  before_action :set_news, only: [:edit,:show,:update,:destroy]
  before_action :authenticate_admin!, only: [:new]
  
  def index
    @news = News.all.order(created_at: :desc)
    @blogs = Blog.all.order(created_at: :desc)
  end

  def new
    @news = News.new
  end

  def create
    @news = News.create(news_params)
    if @news.save
      redirect_to admin_homes_path
    else
      render :new
    end
  end

  def show
  end

  private

  def news_params
    params.require(:news).permit(:title,:text,:image)
  end

  def set_news
    @newss = News.find(params[:id])
  end
end
