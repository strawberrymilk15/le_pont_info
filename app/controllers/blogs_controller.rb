class BlogsController < ApplicationController
  before_action :set_blog, only: [:edit,:show,:update,:destroy]
  before_action :authenticate_admin!, only: [:new]

  def index
    @news = News.all.order(created_at: :desc)
    @blogs = Blog.all.order(created_at: :desc)
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blog_params)
    if @blog.save
      redirect_to admin_homes_path
    else
      render :new
    end
  end

  def show
    @blogs = Blog.all.order(created_at: :desc).limit(12)
  end

  private

  def blog_params
    params.require(:blog).permit(:title,:text,:eyecathing,images: [])
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
