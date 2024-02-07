Rails.application.routes.draw do
  get("/", { :controller => "math", :action => "home" })

  get("/square/new", { :controller => "math", :action => "square" })

  get("/square/results", { :controller => "math", :action => "square_results" })

  get("/square_root/new", { :controller => "math", :action => "root"})
end
