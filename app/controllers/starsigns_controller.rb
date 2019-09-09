class StarsignsController < ApplicationController

    def index
        starsigns = Starsign.all
        render json: starsigns
    end

    def show  
        starsign = Starsign.find(params[:id])
        render ({json: { starsign: StarsignSerializer.new(starsign) }})
    end

  

end
