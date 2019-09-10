module ApiCommunicator
    class Api
        def self.daily_horoscope_starsign(sign)
            # byebug
            puts sign
            JSON.parse(HTTP.get("http://horoscope-api.herokuapp.com/horoscope/today/#{sign}"))
        end
    end
end