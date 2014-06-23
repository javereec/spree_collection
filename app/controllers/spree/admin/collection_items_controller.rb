module Spree
  module Admin
    class CollectionItemsController < Spree::Admin::BaseController
      def destroy
        option_value = Spree::CollectionItem.find(params[:id])
        option_value.destroy
        render :text => nil
      end
    end
  end
end