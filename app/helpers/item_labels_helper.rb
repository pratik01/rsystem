module ItemLabelsHelper

  def getItemLabel(itemId)
    @item_labels = ItemLabel.where("item_id=?",itemId)
  end

  def getItem
    @items = Item.all
  end

  def getItemLabelByItemArray(item_lable_arr)
    @item_labels = ItemLabel.where("id in (?)",item_lable_arr)
  end
end
