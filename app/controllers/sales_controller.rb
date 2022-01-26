class SalesController < ApplicationController
  def show
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
    @sale = Sale.find(params[:id])
    @regions = Region.where(id: @sale.region_id)
    @regions.each do |region|
      @region = region
    end
    @brands = Brand.where(id: @sale.brand_id)
    @brands.each do |brand|
      @brand = brand
    end
    @models = Model.where(id: @sale.model_id)
    @models.each do |model|
      @model = model
    end

    if @sale.sales == true
      @sale = nil
    end
  end
end
