desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  puts "Adding Charlotte's personal links..."

  the_item = Item.new
  the_item.link_url = "https://charlotteurquhart.com"
  the_item.link_description = "My Personal Website"
  the_item.thumbnail_url = "https://picsum.photos/200" # Replace with your desired thumbnail
  the_item.save

  the_item = Item.new
  the_item.link_url = "https://www.linkedin.com/in/charlotte-urquhart/"
  the_item.link_description = "LinkedIn"
  the_item.thumbnail_url = "/assets/Profilephoto.jpg" # Ensure this file exists in your assets folder
  the_item.save

  the_item = Item.new
  the_item.link_url = "https://charlotteurquhartphotography.my.canva.site"
  the_item.link_description = "Photography Portfolio"
  the_item.thumbnail_url = "https://picsum.photos/200" # Replace with your desired thumbnail
  the_item.save

  puts "All items have been added!"
end

