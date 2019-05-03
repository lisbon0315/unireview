class UniversitiesController < ApplicationController
  PER = 20

  def index
    @universities = University.page(params[:page]).per(PER)
  end
end
