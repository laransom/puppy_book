PuppyBook::Application.routes.draw do
 resources :owners, only: [:index, :new, :create, :show]
end
