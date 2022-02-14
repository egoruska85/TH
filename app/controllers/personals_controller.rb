class PersonalsController < ApplicationController

   before_action :authenticate_user!
    def index
      @rents = Rent.where(username_id: current_user.id)
      @searches = Search.where(username_id: current_user.id)
      @users = User.where(id: current_user.id)

    end

end
