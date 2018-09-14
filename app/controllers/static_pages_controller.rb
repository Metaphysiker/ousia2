class StaticPagesController < ApplicationController
  def welcome
    @courses = Course.last(3)
  end

  def about
  end

  def preview
  end
end
