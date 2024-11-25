class ItemsController < ApplicationController
  def index
    @items = Item.all # Fetch all records from the items table
    render({ template: "item_templates/list" }) # Render the view
  end
end

