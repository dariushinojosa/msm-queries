class ActorsController < ApplicationController

  def all
    render({ :template => "actors_templates/all"})
  end

  def show
    render({ :template => "actors_templates/show"})
  end

end
