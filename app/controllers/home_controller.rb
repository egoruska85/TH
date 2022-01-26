class HomeController < ApplicationController

  def index
    @keys = Key.all
    @keys.each do |key|
      if key.key != @activation

          redirect_to '/admin'


      end
    end
  end

end
