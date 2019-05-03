class LessonsController < ApplicationController
  before_action :require_login, only: %i[new create edit update]

  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = current_user.new(lesson_params)

    if @lesson.save
      redirect_to lessons_path, success: '投稿に成功しました'
    else
      flash.now[danger] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def lesson_params
    params.require(:lesson).permit(:name, :professor_name)
  end

  def require_login
    unless logged_in?
      flash[:error] = "ログインしてください"
      redirect_to new
    end
  end
end
