class HoroscopesController < ApplicationController

    # def create
    #     horoscope = Horoscope.new(horoscope_params)
    #     signs = Starsign.all.map{|sign| sign.name}
    #     ApiCommunicator.daily_horoscope_starsign(sign)
    #     horoscope.starsign = (Starsign.all.find{|starsign| starsign.name == horoscope.user.zodiac_sign})
    #     horoscope.save
    # end

    # def show  
    #     horoscope = Horoscope.find(params[:id])
    #     render ({json: { horoscope: HoroscopeSerializer.new(horoscope) }})
    # end

    def index
        horoscopes = Horoscope.all
        render json: horoscopes
    end

    # def show
    #     starsign = Starsign.find(params[:id])
    #     render ({ json: { starsign: HoroscopeSerializer.new(starsign) } })
    # end
    
end
