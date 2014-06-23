module Spree
  class CollectionItem < ActiveRecord::Base
    belongs_to :collection
    acts_as_list scope: :collection
    belongs_to :collectionable, :polymorphic => true
  end
end
