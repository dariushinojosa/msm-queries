class DirectorsController < ApplicationController

  def all
    @directors_list = Director.all
    render({ :template => "directors_templates/all"})
  end

  def eldest
    render({ :template => "directors_templates/eldest"})
  end

  def youngest
    render({ :template => "directors_templates/youngest"})
  end

  def show
    render({ :template => "directors_templates/show"})
  end

end
