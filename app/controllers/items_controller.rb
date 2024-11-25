class ItemsController < ApplicationController
  def index
    @items = Item.all # Fetch all items from the database
    render({ template: "item_templates/list" }) # Render the list view
  end
end

