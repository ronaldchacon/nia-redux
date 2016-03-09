class WelcomeController < ApplicationController
  def index
    authorize :welcome, :index?
  end

  def show
    authorize :welcome, :show?
  end
end
