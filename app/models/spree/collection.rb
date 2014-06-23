module Spree
  class Collection < ActiveRecord::Base
    has_many :collection_items, -> { order("position ASC") }, dependent: :destroy

    validates :name, presence: true

    accepts_nested_attributes_for :collection_items, reject_if: lambda { |ci| ci[:collectionable_type].blank? || ci[:collectionable_id].blank? }, allow_destroy: true
  end
end
