class ReviewsController < ApplicationController
  before_action :require_login, only: %i[new create edit update]
  PER = 10

  def index
    @reviews = Review.page(params[:page]).per(PER)
  end

  def new
    @review = Review.new
    @review.lesson_id = params[:lesson_id]
  end

  def create
    @review = current_user.reviews.build(review_params)

    if @review.save
      redirect_to reviews_path, success: '投稿に成功しました'
    else
      flash.now[danger] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :star, :lesson_id)
  end

  def require_login
    unless logged_in?
      flash[:error] = "ログインしてください"
      redirect_to login_path
    end
  end
end
