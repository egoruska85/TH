class SearchesController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]
  def index
  end
  def show
    @searches = Search.where(public: true)
    @searches1 = @searches.where(typesofrent_id: params[:id])
    #@searches2 = @searches.where(typesofrent_id: '2')
    #@searches3 = @searches.where(typesofrent_id: '3')
  end
  def more
    @nophoto = Nophoto.all

    @nophoto.each do |nophoto|
      @no = nophoto.image
    end
    @search = Search.find(params[:id])
    @regions = Region.where(id: @search.region_id)
    @regions.each do |region|
      @region = region
    end
  end
  def new

  end
end
