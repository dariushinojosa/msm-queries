class MoviesController < ApplicationController

  def all
    @movies_list = Movie.all
    render({ :template => "movies_templates/all"})
  end

  def show
    the_id = params.fetch("the_id")
    @this_mov = Movie.where({ :id => the_id }).first
    render({ :template => "movies_templates/show"})
  end

end
