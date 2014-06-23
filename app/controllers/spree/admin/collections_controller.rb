module Spree
  module Admin
    class CollectionsController < ResourceController

      before_filter :setup_new_collection_item, :only => [:edit]

      def update_items_positions
        params[:positions].each do |id, index|
          CollectionItem.where(:id => id).update_all(:position => index)
        end

        respond_to do |format|
          format.html { redirect_to admin_collections_url(params[:id]) }
          format.js  { render :text => 'Ok' }
        end
      end

      protected

        def location_after_save
          edit_admin_collection_url(@collection)
        end

      private

        def setup_new_collection_item
          @collection.collection_items.build if @collection.collection_items.empty?
        end

    end
  end
end
