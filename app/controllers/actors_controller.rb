class ActorsController < ApplicationController

  def all
    @actors_list = Actor.all
    render({ :template => "actors_templates/all"})
  end

  def show
    the_id = params.fetch("the_id")
    @this_act = Actor.where({ :id => the_id }).first
    @matching_chars = Character.where({ :actor_id => the_id })
    render({ :template => "actors_templates/show"})
  end

end
