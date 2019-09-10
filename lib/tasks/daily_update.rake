require "#{Rails.root}/app/helpers/api_communicator.rb"
include ApiCommunicator

# Helpers



task fetch_dayly_updates: [:environment] do
    star_signs = Starsign.all.map {|sign| sign.name}

    star_signs.map {|name|
        prediction = Api.daily_horoscope_starsign(name)
        # byebug
        sign = Starsign.find_by(name: name)
        Horoscope.create(content: prediction["horoscope"], starsign: sign, date: prediction["date"])
        puts "Created #{name} horoscope"
    }
end