# Student name: Chris Smith
# Student ID: 0406238
# Course: WEBD-3011 (255589) Agile Full Stack Web Development
# Instructor: Diogo Iwasaki
# Date: May 28, 2024

# In the challenge_create.rb file:
# Create three new products using the three different ways to create new AR objects.
# Ensure that all three new products are persisted to the database, without validations errors.
# Create a Product object that is missing some required columns.
# Attempt to save this product and print all the AR errors which are generated.

require_relative 'ar.rb'

# Create a new product object then set the values
scrab_cakes = Product.new
scrab_cakes.name = "Scrab Cakes"
scrab_cakes.description = "Processed from native Scrab meat, both delicious and nutritious."
scrab_cakes.price = "12.50"
scrab_cakes.stock_quantity = "5"

# Save the new product object to the database
scrab_cakes.save
# Print out the content of the new project object
puts scrab_cakes.inspect

# Create a second new product object as a hash
paramite_pies = Product.create(
    name: "Paramite Pies",
    description: "Processed from native Paramite meat, homestyle and 100% natural.",
    price: "17.75",
    stock_quantity: "4"
    )

# Save the new second product object to the database
paramite_pies.save

# Print out the content of the second new product object
puts paramite_pies.inspect

# Create a third new product object and set a value, but not all the valyes
meech_munchies = Product.new(name: "Meech Munchies")

# Save the third new product object to the database, while expecting errors, print out if it's a success.
if (meech_munchies.save)
    puts "Meech Munchies were saved to the database products table."
    puts meech_munchies.inspect
  else
    puts "There was an error saving Meech Munchies to the database."
    
    # Loop through all of the errors related to missing valid fields for the third new product
    meech_munchies.errors.messages.each do |column, errors|
      errors.each do |error|
        puts "The #{column} property #{error}."
      end
    end
  end
