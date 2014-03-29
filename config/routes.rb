PuppyBook::Application.routes.draw do

 resources :owners, only: [:index, :new, :create, :show]

 resources :dogs, only: [:index, :new, :create]

end
