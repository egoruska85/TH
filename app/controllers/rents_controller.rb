class RentsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]
  def index
  end
  def show
    @keys = Key.all
    @keys.each do |key|
      if key.key != @activation

          redirect_to '/admin'


      end
    end
    @labelrent = Typesofrent.find(params[:id])
    @rents = Rent.where(public: true)
    @rents1 = @rents.where(typesofrent_id: params[:id])

  end
  def more
    @keys = Key.all
    @keys.each do |key|
      if key.key != @activation

          redirect_to '/admin'


      end
    end
    @nophoto = Nophoto.all

    @nophoto.each do |nophoto|
      @no = nophoto.image
    end
    @rent = Rent.find(params[:id])
    @regions = Region.where(id: @rent.region_id)
    @regions.each do |region|
      @region = region
    end
    @brands = Brand.where(id: @rent.brand_id)
    @brands.each do |brand|
      @brand = brand
    end
    @models = Model.where(id: @rent.model_id)
    @models.each do |model|
      @model = model
    end

  end
  def new

  end
end
