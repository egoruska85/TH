class PurchasesController < ApplicationController
  def show
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
  end
  def more
    @nophoto = Nophoto.all

    @nophoto.each do |nophoto|
      @no = nophoto.image
    end
    @purchase = Purchase.find(params[:id])
    @regions = Region.where(id: @purchase.region_id)
    @regions.each do |region|
      @region = region
    end
    @brands = Brand.where(id: @purchase.brand_id)
    @brands.each do |brand|
      @brand = brand
    end
    @models = Model.where(id: @purchase.model_id)
    @models.each do |model|
      @model = model
    end
    if @purchase.bought == true
      @purchase = nil
    end
  end

end
