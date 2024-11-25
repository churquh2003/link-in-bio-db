class ItemsController < ApplicationController
  def index
    # Fetch all items from the database
    @list_of_items = Item.all.order(:created_at)

    # Render the list view
    render({ template: "item_templates/list" })
  end
end

