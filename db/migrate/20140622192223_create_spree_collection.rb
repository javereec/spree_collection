class CreateSpreeCollection < ActiveRecord::Migration
  def change
    create_table :spree_collections do |t|
      t.string  :name
      t.text    :description
      t.string  :html_class
    end
  end
end
