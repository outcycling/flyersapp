Rails.application.routes.draw do
    
  get '/flyers' => 'flyers#index'
    
  get '/flyers/new' => 'flyers#new' 
    
  get '/flyers/:id' => 'flyers#show', as: :flyer 
    
  get '/flyers/:id/edit' => 'flyers#edit', as: :edit_flyer    
    
  patch 'flyers/:id' => 'flyers#update'    
  post '/flyers' => 'flyers#create'       
    
  get '/login' => 'sessions#new'
          
    
  root 'static_pages#index'
    
  get 'static_pages/index'

  get 'static_pages/supporters'

  get 'static_pages/youth'

  get 'static_pages/board'

  get 'static_pages/staff'

  get 'static_pages/photos'

  get 'static_pages/about'

  get 'static_pages/apply'
    
  get 'static_pages/thanks'    

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
