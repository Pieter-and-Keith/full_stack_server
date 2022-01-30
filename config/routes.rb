Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope '/api' do
    get '/details', to: 'details#index'
    post '/details', to: 'details#create'
    get '/details/:id', to: 'details#show'
    put '/details/:id', to: 'details#update'
    delete '/details/:id', to: 'details#destroy'

    scope '/auth' do 
      post '/sign_up', to: 'users#create'
      post '/sign_in', to: 'users#sign_in'
    end

    get '/options', to: 'options#index'
    post '/options', to: 'options#create'
    get '/options/:id', to: 'options#show'
    put 'options/:id', to: 'options#update'
    delete '/options/:id', to: 'options#destroy'

    get '/bookings', to: 'bookings#index'
    post '/bookings', to: 'bookings#create'
    get '/bookings/:id', to: 'bookings#show'
    put '/bookings/:id', to: 'bookings#update'
    delete '/bookings/:id', to: 'bookings#destroy'

  end

end
