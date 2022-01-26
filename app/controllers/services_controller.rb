class ServicesController < ApplicationController
  def index
    @keys = Key.all
    @keys.each do |key|
      if key.key != @activation

          redirect_to '/admin'


      end
    end
    @services = Service.all
  end
  def show
    @service = Service.find (params[:id])
  end
end
