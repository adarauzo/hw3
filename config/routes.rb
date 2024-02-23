Rails.application.routes.draw do
  get 'places/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resource :places

  get '/places/:id', to: 'places#show', as: 'place'


 

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
end
