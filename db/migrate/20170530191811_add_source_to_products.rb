class AddSourceToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :source, :string
  end
end
