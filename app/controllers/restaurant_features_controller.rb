class RestaurantFeaturesController < ApplicationController
  before_action :set_restaurant_feature, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @restaurant_features = RestaurantFeature.joins(:restaurant)
    respond_with(@restaurant_features)
  end

  def show
    respond_with(@restaurant_feature)
  end

  def new
    @restaurant_feature = RestaurantFeature.new
    respond_with(@restaurant_feature)
  end

  def edit
  end

  def create

    @fList = params[:restaurant_feature][:name]
    @fList.each do |f|
      if !f.nil? and !f.blank?
        params[:restaurant_feature][:name] = f.to_s
        @restaurant_feature = RestaurantFeature.new(restaurant_feature_params)
        @restaurant_feature.save
      end
    end
    #@restaurant_feature.save
    respond_with(@restaurant_feature)
  end

  def update
    @restaurant_feature.update(restaurant_feature_params)
    respond_with(@restaurant_feature)
  end

  def destroy
    @restaurant_feature.destroy
    respond_with(@restaurant_feature)
  end

  private
    def set_restaurant_feature
      @restaurant_feature = RestaurantFeature.find(params[:id])
    end

    def restaurant_feature_params
      params[:restaurant_feature].permit!
    end
end
