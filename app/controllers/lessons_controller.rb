class LessonsController < ApplicationController
  before_action :require_login, only: %i[new create edit update]
  PER = 20

  def index
    @lessons = Lesson.page(params[:page]).per(PER)
  end

  def new
    @lesson = Lesson.new
    @lesson.university_id = params[:university_id]
  end

  def create
    @lesson = current_user.lessons.build(lesson_params)

    if @lesson.save
      redirect_to lessons_path, success: '投稿に成功しました'
    else
      flash.now[danger] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def lesson_params
    params.require(:lesson).permit(:name, :professor_name, :department, :university_id)
  end

  def require_login
    unless logged_in?
      flash[:error] = "ログインしてください"
      redirect_to login_path
    end
  end
end
