class PurchasesController < ApplicationController
  def show
    @nophoto = Nophoto.all

    @nophoto.each do |nophoto|
      @no = nophoto.image
    end
  end
  def more
    @purchase = Purchase.find(params[:id])
    @regions = Region.where(id: @purchase.region_id)
    @regions.each do |region|
      @region = region
    end
    if @purchase.bought == true
      @purchase = nil
    end
  end

end
