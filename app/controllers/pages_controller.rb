class PagesController < ApplicationController
  def home
    redirect_to surveys_path if logged_in?
  end

  def about
  end

  def blog
  end

  def resources
  end
end
