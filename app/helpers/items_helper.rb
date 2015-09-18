module ItemsHelper

  def getItemsByItemIds(item_ids)
    @items = Item.where("id in (?)",item_ids)
  end
end
