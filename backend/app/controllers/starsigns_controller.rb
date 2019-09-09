class StarsignsController < ApplicationController

    def index
        starsigns = Starsign.all
        render json: starsigns
    end

end
