class BlogsController < ApplicationController
  before_action :set_blog, only: [:edit,:show,:update,:destroy,:log_admin_edit]
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

  def update
    @blog = Blog.update(blog_params)
    if @blog.save
      redirect_to admin_homes_path
    else
      render :edit
    end
  end

  def edit
  end

  def show
    @blogs = Blog.all.order(created_at: :desc).limit(12)
  end

  def destroy
    if current_admin.id == @blog.admin_id
      @blog.destroy
      redirect_to admin_homes_path
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title,:text,:eyecathing,images: [])
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def log_admin_edit
    if current_admin.id != @blog.admin_id
      redirect_to root_path
    end
  end
end
