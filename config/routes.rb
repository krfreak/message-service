Rails.application.routes.draw do
#  devise_for :messages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :messages do
    collection do
      post "/tagged", via: :post, action: :tagged
    end
  end
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
end
