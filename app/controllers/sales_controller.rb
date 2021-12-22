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
  end
end
