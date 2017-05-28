class AddTagsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :tags, :text
  end
end
