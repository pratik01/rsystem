class ItemLabelsController < ApplicationController
  before_action :set_item_label, only: [:show, :edit, :update, :destroy]

  respond_to :html,:json,:js

  def index
    @item_labels = ItemLabel.all
    respond_with(@item_labels)
  end

  def show
    respond_with(@item_label)
  end

  def new
    @item_label = ItemLabel.new
    respond_with(@item_label)
  end

  def edit
  end

  def create
    @item_label = ItemLabel.new(item_label_params)
    @item_label.save
    respond_with(@item_label)
  end

  def update
    @item_label.update(item_label_params)
    respond_with(@item_label)
  end

  def destroy
    @item_label.destroy
    respond_with(@item_label)
  end

  def list_restaurant_item
    #get_list_by_item_id
    @items_labels = ItemLabel.where("item_id=?",params[:id])

  end

  def get_item_labels_by_item_id
    @item_labels = ItemLabel.where("item_id = ?",params[:id])
    respond_to do |format|
      format.js
    end
  end

  private
    def set_item_label
      @item_label = ItemLabel.find(params[:id])
    end

    def item_label_params
      params.require(:item_label).permit!
    end
end
