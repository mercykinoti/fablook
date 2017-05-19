class Search < ApplicationRecord
  def search_products
    products = Product.all

    products = products.where(["keywords LIKE ?","%#{keywords}%"]) if keywords.present?
    products = products.where(["category LIKE ?",category]) if category.present?
    products = products.where(["price >= ?", min_price]) if min_price.present?
    products = products.where(["price <= ?", max_price]) if max_price.present?


    return products
  end
end
