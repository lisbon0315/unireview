class UniversitiesController < ApplicationController
  def new
  end

  def index
    @universities = University.all
  end
end
