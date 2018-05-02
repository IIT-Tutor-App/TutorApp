class SearchController < ApplicationController
  def show
    @tutors = Tutor.all
    @sessions = Session.all
  end
end
