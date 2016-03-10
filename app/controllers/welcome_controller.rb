class WelcomeController < ApplicationController
  def index
    @movies = CanistreamitSearch.new.search_and_query(params[:movie_name])
    authorize :welcome, :index?
  end

  def show
    authorize :welcome, :show?
  end
end
