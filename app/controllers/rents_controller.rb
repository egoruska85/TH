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
    @nophoto = Nophoto.all

    @nophoto.each do |nophoto|
      @no = nophoto.image
    end
  end
  def new
    @regions = Region.all
    @typesofrents = Typesofrent.all
    @brands = Brand.all
    @models = Model.all
  end
  def create
    @rent = Rent.new(rent_params)
    @rent.username_id = current_user.id
if @rent.save
  redirect_to personals_path
else
   render action: 'new'
end
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
  def edit
    @regions = Region.all
    @typesofrents = Typesofrent.all
    @brands = Brand.all
    @models = Model.all

    @rent = Rent.find(params[:id])
  end
  def update
  @rent = Rent.find(params[:id])
  if @rent.update(rent_params)
    redirect_to personals_path
  else
    render action: 'edit'
  end
  end
  private

  def rent_params
    params.require(:rent).permit(:title_ru, :title_tm, :title_en, :text_ru, :text_tm, :text_en, :region_id, :year, :typesofrent_id, :phone, :price, :email, :public, :model_id, :brand_id, :search, :cashless, :image, :images, :username_id)
  end


end
