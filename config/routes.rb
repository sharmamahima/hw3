Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get("/", { :controller => "places", :action => "index" })

  Rails.application.routes.draw do
    resources :places, only: [:index, :show, :new, :create] do
      resources :entries, only: [:new, :create]
    end
  end
end
