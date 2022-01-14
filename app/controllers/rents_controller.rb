class RentsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]
  def index
  end
  def show
    @rents = Rent.where(public: true)
    @rents1 = @rents.where(typesofrent_id: '1')
    @rents2 = @rents.where(typesofrent_id: '2')
    @rents3 = @rents.where(typesofrent_id: '3')
  end
  def more
    @nophoto = Nophoto.all

    @nophoto.each do |nophoto|
      @no = nophoto.image
    end
    @rent = Rent.find(params[:id])
    @regions = Region.where(id: @rent.region_id)
    @regions.each do |region|
      @region = region
    end

  end
  def new

  end
end
