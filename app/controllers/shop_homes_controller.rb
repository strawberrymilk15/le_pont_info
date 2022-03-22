class ShopHomesController < ApplicationController
  before_action :authenticate_shop!

  def index
    @news = News.all.order(created_at: :desc).limit(3)
    @blogs = Blog.all.order(created_at: :desc).limit(6)
  end
end
