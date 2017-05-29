class AddTagsAndImageToChoices < ActiveRecord::Migration[5.0]
  def change
    add_column :choices, :tags, :string
    add_column :choices, :label, :string
    add_column :choices, :image_url, :string
  end
end
