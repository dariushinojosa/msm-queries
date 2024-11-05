class MoviesController < ApplicationController

  def all
    render({ :template => "movies_templates/all"})
  end

  def show
    render({ :template => "movies_templates/show"})
  end

end
