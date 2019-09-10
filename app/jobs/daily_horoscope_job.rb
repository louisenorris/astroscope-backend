class DailyHoroscopeJob < ApplicationJob
  queue_as :default

  def perform(sign)
    ApiCommunicator.daily_horoscope_starsign(sign).set()
  end
end
