# In the challenge_update.rb file:
# Find all products with a stock quantity greater than 40.
# Add one to the stock quantity of each of these products and then save these changes to the database.

require_relative 'ar.rb'

high_stock_products = Product.where("stock_quantity > 40")

high_stock_products.each { |product| puts "#{product.name} has #{product.stock_quantity} in stock."}


high_stock_products.each do  |product| 
    product.stock_quantity += 1 
    product.save
end

high_stock_products.each { |product| puts "#{product.name} has #{product.stock_quantity} in stock."}

