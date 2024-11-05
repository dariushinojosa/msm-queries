Rails.application.routes.draw do
  
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "all" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/directors/:the_id", { :controller => "directors", :action => "show" })

  get("/actors", { :controller => "actors", :action => "all" })
  get("/actors/:the_id", { :controller => "actors", :action => "show" })

  get("/movies", { :controller => "movies", :action => "all" })
  get("/movies/:the_id", { :controller => "movies", :action => "show" })

end
