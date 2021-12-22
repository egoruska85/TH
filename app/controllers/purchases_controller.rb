class PurchasesController < ApplicationController
  def show
    @nophoto = Nophoto.all

    @nophoto.each do |nophoto|
      @no = nophoto.image
    end
  end
  def more
    @purchase = Purchase.find(params[:id])
  end
end
