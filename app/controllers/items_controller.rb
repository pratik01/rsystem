class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :login_required
  before_action :role_required
  before_action :set_page,only: [:edit, :update, :destroy ]
  before_action :owner_required, only: [ :edit, :update, :destroy ]
  layout "admin"
  include ItemLabelsHelper
  include RestaurantItemsHelper
  include RestaurantsHelper
  respond_to :html,:json

  def index
    @items = Item.all
    respond_with(@items)
  end

  def show
    respond_with(@item)
  end

  def new
    @item = Item.new
    respond_with(@item)
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to :controller => "items",:action => "index"
  end

  def update
    @item.update(item_params)
    redirect_to :controller => "items",:action => "index"
  end

  def destroy
    @item.destroy
    respond_with(@item)
  end

  private
  def set_page
    @item = Item.find params[:id]

    # TheRole: object for ownership checking
    for_ownership_check(@item)
  end

    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :description)
    end
end
