class DirectorsController < ApplicationController

  def all
    @directors_list = Director.all
    render({ :template => "directors_templates/all"})
  end

  def eldest
    @old_dir = Director.where.not({ :dob => nil }).order({ :dob => :asc }).first
    render({ :template => "directors_templates/eldest"})
  end

  def youngest
    @young_dir = Director.where.not({ :dob => nil }).order({ :dob => :desc }).first
    render({ :template => "directors_templates/youngest"})
  end

  def show
    the_id = params.fetch("the_id")
    @this_dir = Director.where({ :id => the_id }).first
    @matching_movies = Movie.where({ :director_id => the_id })
    render({ :template => "directors_templates/show"})
  end

end
