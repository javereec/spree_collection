Spree::Core::Engine.routes.draw do
  namespace 'admin' do
    resources :collections do
      collection do
        post :update_positions
        post :update_items_positions
      end
    end

    delete '/collection_items/:id', :to => "collection_items#destroy", :as => :collection_item
  end
end
