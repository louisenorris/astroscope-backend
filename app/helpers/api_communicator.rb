class ApiCommunicator

    def self.daily_horoscope_starsign(sign)
        JSON.parse(HTTP.get(`http://horoscope-api.herokuapp.com/horoscope/today/#{sign}`))
    end

end