class NewsController < ApplicationController
  before_action :set_news, only: [:edit,:show,:update,:destroy]
  before_action :authenticate_admin!, only: [:new,:edit,:update,:destroy]
  
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

  def update
    if @newss.update(news_params)
      redirect_to admin_homes_path
    else
      render :edit
    end
  end

  def edit
  end

  def show
  end

  def destroy
    if current_admin.id == @newss.admin_id
      @newss.destroy
      redirect_to admin_homes_path
    end
  end

  private

  def news_params
    params.require(:news).permit(:title,:text,:image)
  end

  def set_news
    @newss = News.find(params[:id])
  end

end
