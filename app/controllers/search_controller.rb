class SearchController < ApplicationController
  def show
    @tutors = Tutor.all
  end
end
