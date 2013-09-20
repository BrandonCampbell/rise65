Rise65::Application.routes.draw do
  root               to: "static_pages#home"

  match '/services', to: 'static_pages#services'
  match '/about',    to: 'static_pages#about'
  match '/news',     to: 'static_pages#new'
  match '/store',    to: 'static_pages#store'
end
