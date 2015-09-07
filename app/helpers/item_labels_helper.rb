module ItemLabelsHelper

  def getItemLabel(itemId)
    @item_labels = ItemLabel.where("item_id=?",itemId)
  end

  def getItem
    @items = Item.all
  end
end
