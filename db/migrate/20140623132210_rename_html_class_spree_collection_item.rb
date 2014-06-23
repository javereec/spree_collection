class RenameHtmlClassSpreeCollectionItem < ActiveRecord::Migration
  def change
    rename_column :spree_collection_items, :html_class, :partial_override
    add_column :spree_collection_items, :description, :text
  end
end
