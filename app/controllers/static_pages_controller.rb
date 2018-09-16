class StaticPagesController < ApplicationController
  def welcome
    @courses = Course.first(3)
  end

  def about
  end

  def preview
    @courses = Course.first(3)
  end
end
