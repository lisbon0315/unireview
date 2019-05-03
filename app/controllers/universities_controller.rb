class UniversitiesController < ApplicationController
  def new
  end

  def index
    @niversities = University.all
  end
end
