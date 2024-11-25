class ItemsController < ApplicationController
  def index
    @items = Item.all
    render({ template: "item_templates/list" })
  end
end
