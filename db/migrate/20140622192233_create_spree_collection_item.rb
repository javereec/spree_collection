class CreateSpreeCollectionItem < ActiveRecord::Migration
  def change
    create_table :spree_collection_items do |t|
      t.integer    :position
      t.references :collection
      t.references :collectionable, :polymorphic => true
      t.string     :html_class
    end
  end
end
