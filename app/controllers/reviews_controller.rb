class ReviewsController < ApplicationController
  before_action :require_login, only: %i[new create edit update]
  
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = current_user.new(review_params)

    if @review.save
      redirect_to reviews_path, success: '投稿に成功しました'
    else
      flash.now[danger] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :star)
  end

  def require_login
    unless logged_in?
      flash[:error] = "ログインしてください"
      redirect_to user_new_path
    end
  end
end
